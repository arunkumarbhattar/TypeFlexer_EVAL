/*
 *  pnm2png.c --- conversion from PBM/PGM/PPM-file to PNG-file
 *  copyright (C) 1999-2019 by Willem van Schaik <willem at schaik dot com>
 *
 *  This software is released under the MIT license. For conditions of
 *  distribution and use, see the LICENSE file part of this package.
 */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdio_tainted.h>
#include <stdlib_tainted.h>
#include <checkcbox_extensions.h>
#ifndef BOOL
#define BOOL unsigned char
#endif
#ifndef TRUE
#define TRUE (BOOL) 1
#endif
#ifndef FALSE
#define FALSE (BOOL) 0
#endif

/* make pnm2png verbose so we can find problems (needs to be before png.h) */
#ifndef PNG_DEBUG
#define PNG_DEBUG 0
#endif

#include "png.h"

#ifdef WASM_SBX
#define _free_(x) t_free(x)
#define _malloc(x) t_malloc(x)
#define _calloc(x,y) t_calloc(x,y)
#define _realloc(x,y) t_realloc(x,y)
#elif HEAP_SBX
#define _free_(x) hoard_free(x)
#define _malloc(x) hoard_malloc(x)
#define _calloc(x,y) hoard_calloc(x,y)
#define _realloc(x,y) hoard_realloc(x,y)
#else
#define _free_(x) free(x)
#define _malloc(x) malloc(x)
#define _calloc(x,y) calloc(x,y)
#define _realloc(x,y) realloc(x,y)

#endif

/* function prototypes */

/*
Steps to Reproduce issue -->
./pnm2png crash_pnm2png_stack_buffer_overflow_get_token 2.png
PNM2PNG
Error:  unsuccessful converting to PNG-image

However, if you do the same on generic-C program with the below injected unfix fix,
You will see
(base) twinturbo@twinturbo-OptiPlex-3090:~/Desktop/untouchedlibpng/libpng/contrib/pngminus/cmake-build-debug$ ./pnm2png ../build/crash_pnm2png_stack_buffer_overflow_get_token 2.png
=================================================================
==103171==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7ffea90da0e0 at pc 0x55e96c376f3a bp 0x7ffea90d9e90 sp 0x7ffea90d9e80
WRITE of size 1 at 0x7ffea90da0e0 thread T0
    #0 0x55e96c376f39 in get_token /home/twinturbo/Desktop/untouchedlibpng/libpng/contrib/pngminus/pnm2png.c:552
    #1 0x55e96c375570 in pnm2png /home/twinturbo/Desktop/untouchedlibpng/libpng/contrib/pngminus/pnm2png.c:200
    #2 0x55e96c374ef5 in main /home/twinturbo/Desktop/untouchedlibpng/libpng/contrib/pngminus/pnm2png.c:125
    #3 0x7f5ed61e0082 in __libc_start_main ../csu/libc-start.c:308
    #4 0x55e96c3746fd in _start (/home/twinturbo/Desktop/untouchedlibpng/libpng/contrib/pngminus/cmake-build-debug/pnm2png+0x76fd)

*/
int main (int argc, char *argv[]);
void usage ();
BOOL pnm2png (FILE *pnm_file, FILE *png_file, FILE *alpha_file,
              BOOL interlace, BOOL alpha);
// void get_token (FILE *pnm_file, _TPtr<char> token_buf, size_t token_buf_size); @BUFFER_OVERFLOW_FIX
void get_token (FILE *pnm_file, _TPtr<char> token_buf); // @BUFFER_OVERFLOW
png_uint_32 get_data (FILE *pnm_file, int depth);
png_uint_32 get_value (FILE *pnm_file, int depth);

/*
 *  main
 */
int main (int argc, char *argv[])
{
  FILE *fp_rd = stdin;
  FILE *fp_al = NULL;
  FILE *fp_wr = stdout;
  BOOL interlace = FALSE;
  BOOL alpha = FALSE;
  int argi;

  for (argi = 1; argi < argc; argi++)
  {
    if (argv[argi][0] == '-')
    {
      switch (argv[argi][1])
      {
        case 'i':
          interlace = TRUE;
          break;
        case 'a':
          alpha = TRUE;
          argi++;
          if ((fp_al = fopen (argv[argi], "rb")) == NULL)
          {
            fprintf (stderr, "PNM2PNG\n");
            fprintf (stderr, "Error:  alpha-channel file %s does not exist\n",
                     argv[argi]);
            exit (1);
          }
          break;
        case 'h':
        case '?':
          usage ();
          exit (0);
          break;
        default:
          fprintf (stderr, "PNM2PNG\n");
          fprintf (stderr, "Error:  unknown option %s\n", argv[argi]);
          usage ();
          exit (1);
          break;
      } /* end switch */
    }
    else if (fp_rd == stdin)
    {
      if ((fp_rd = fopen (argv[argi], "rb")) == NULL)
      {
        fprintf (stderr, "PNM2PNG\n");
        fprintf (stderr, "Error:  file %s does not exist\n", argv[argi]);
        exit (1);
      }
    }
    else if (fp_wr == stdout)
    {
      if ((fp_wr = fopen (argv[argi], "wb")) == NULL)
      {
        fprintf (stderr, "PNM2PNG\n");
        fprintf (stderr, "Error:  cannot create PNG-file %s\n", argv[argi]);
        exit (1);
      }
    }
    else
    {
      fprintf (stderr, "PNM2PNG\n");
      fprintf (stderr, "Error:  too many parameters\n");
      usage ();
      exit (1);
    }
  } /* end for */

#if defined(O_BINARY) && (O_BINARY != 0)
  /* set stdin/stdout to binary,
   * we're reading the PNM always! in binary format
   */
  if (fp_rd == stdin)
    setmode (fileno (stdin), O_BINARY);
  if (fp_wr == stdout)
    setmode (fileno (stdout), O_BINARY);
#endif

  /* call the conversion program itself */
  if (pnm2png (fp_rd, fp_wr, fp_al, interlace, alpha) == FALSE)
  {
    fprintf (stderr, "PNM2PNG\n");
    fprintf (stderr, "Error:  unsuccessful converting to PNG-image\n");
    exit (1);
  }

  /* close input file */
  fclose (fp_rd);
  /* close output file */
  fclose (fp_wr);
  /* close alpha file */
  if (alpha)
    fclose (fp_al);

  return 0;
}

/*
 *  usage
 */

void usage ()
{
  fprintf (stderr, "PNM2PNG\n");
  fprintf (stderr, "   by Willem van Schaik, 1999\n");
  fprintf (stderr, "Usage:  pnm2png [options] <file>.<pnm> [<file>.png]\n");
  fprintf (stderr, "   or:  ... | pnm2png [options]\n");
  fprintf (stderr, "Options:\n");
  fprintf (stderr, "   -i[nterlace]   write png-file with interlacing on\n");
  fprintf (stderr,
      "   -a[lpha] <file>.pgm read PNG alpha channel as pgm-file\n");
  fprintf (stderr, "   -h | -?  print this help-information\n");
}

/*
 *  pnm2png
 */

BOOL pnm2png (FILE *pnm_file, FILE *png_file, FILE *alpha_file,
              BOOL interlace, BOOL alpha)
{
  png_struct    *png_ptr = NULL;
  png_info      *info_ptr = NULL;
  _TPtr<png_byte>      png_pixels = NULL;
  _TPtr<_TPtr<png_byte>>      row_pointers = NULL;
  _TPtr<png_byte>      pix_ptr = NULL;
  volatile png_uint_32 row_bytes;

  _TPtr<char>   type_token = NULL;
    type_token = TNtStrMalloc (16);
  _TPtr<char>   width_token = NULL;
    width_token = TNtStrMalloc (16);
  _TPtr<char>   height_token = NULL;
    height_token = TNtStrMalloc (16);
  _TPtr<char>   maxval_token = NULL;
    maxval_token = TNtStrMalloc (16);

  volatile int  color_type = 1;
  unsigned long ul_width = 0, ul_alpha_width = 0;
  unsigned long ul_height = 0, ul_alpha_height = 0;
  unsigned long ul_maxval = 0;
  volatile png_uint_32 width = 0, height = 0;
  volatile png_uint_32 alpha_width = 0, alpha_height = 0;
  png_uint_32   maxval;
  volatile int  bit_depth = 0;
  int           channels = 0;
  int           alpha_depth = 0;
  int           alpha_present = 0;
  int           row, col;
  BOOL          raw, alpha_raw = FALSE;
#if defined(PNG_WRITE_INVERT_SUPPORTED) || defined(PNG_WRITE_PACK_SUPPORTED)
  BOOL          packed_bitmap = FALSE;
#endif
  png_uint_32   tmp16;
  int           i;

  /* read header of PNM file */
  // This commit fixes the buffer overflow --> so lets re-enact the buffer overflow -->https://github.com/glennrp/libpng/commit/1f0221fad7e7888ada87eda511dcbfd701de7d21

  //get_token (pnm_file, type_token, sizeof (type_token)); @BUFFER_OVERFLOW_FIX
  get_token (pnm_file, type_token);
  if (type_token[0] != 'P')
  {
    _free_ (type_token);
    return FALSE;
  }
  else if ((type_token[1] == '1') || (type_token[1] == '4'))
  {
#if defined(PNG_WRITE_INVERT_SUPPORTED) || defined(PNG_WRITE_PACK_SUPPORTED)
    raw = (type_token[1] == '4');
    color_type = PNG_COLOR_TYPE_GRAY;
    //get_token (pnm_file, width_token, sizeof (width_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, width_token); // @BUFFER_OVERFLOW
    t_sscanf (width_token, StaticCheckedToTStrAdaptor("%lu"), &ul_width);
    width = (png_uint_32) ul_width;
    //get_token (pnm_file, height_token, sizeof (height_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, height_token);// @BUFFER_OVERFLOW
    t_sscanf (height_token, StaticCheckedToTStrAdaptor("%lu"), &ul_height);
    height = (png_uint_32) ul_height;
    bit_depth = 1;
    packed_bitmap = TRUE;
#else
    fprintf (stderr, "PNM2PNG built without PNG_WRITE_INVERT_SUPPORTED and\n");
    fprintf (stderr, "PNG_WRITE_PACK_SUPPORTED can't read PBM (P1,P4) files\n");
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);
    return FALSE;
#endif
  }
  else if ((type_token[1] == '2') || (type_token[1] == '5'))
  {
    raw = (type_token[1] == '5');
    color_type = PNG_COLOR_TYPE_GRAY;
    //get_token (pnm_file, width_token, sizeof (width_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, width_token);// @BUFFER_OVERFLOW
    t_sscanf (width_token, StaticCheckedToTStrAdaptor("%lu"), &ul_width);
    width = (png_uint_32) ul_width;
    //get_token (pnm_file, height_token, sizeof (height_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, height_token);// @BUFFER_OVERFLOW
    t_sscanf (height_token, StaticCheckedToTStrAdaptor("%lu"), &ul_height);
    height = (png_uint_32) ul_height;
    //get_token (pnm_file, maxval_token, sizeof (maxval_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, maxval_token);// @BUFFER_OVERFLOW
    t_sscanf (maxval_token, StaticCheckedToTStrAdaptor("%lu"), &ul_maxval);
    maxval = (png_uint_32) ul_maxval;

    if (maxval <= 1)
      bit_depth = 1;
    else if (maxval <= 3)
      bit_depth = 2;
    else if (maxval <= 15)
      bit_depth = 4;
    else if (maxval <= 255)
      bit_depth = 8;
    else if (maxval <= 65535U)
      bit_depth = 16;
    else /* maxval > 65535U */
    {
        _free_ (type_token);
        _free_ (width_token);
        _free_ (height_token);
        _free_ (maxval_token);
        return FALSE;
    }
  }
  else if ((type_token[1] == '3') || (type_token[1] == '6'))
  {
    raw = (type_token[1] == '6');
    color_type = PNG_COLOR_TYPE_RGB;
    //get_token (pnm_file, width_token, sizeof (width_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, width_token);// @BUFFER_OVERFLOW
    t_sscanf (width_token, StaticCheckedToTStrAdaptor("%lu"), &ul_width);
    width = (png_uint_32) ul_width;
    //get_token (pnm_file, height_token, sizeof (height_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, height_token);// @BUFFER_OVERFLOW
    t_sscanf (height_token, StaticCheckedToTStrAdaptor("%lu"), &ul_height);
    height = (png_uint_32) ul_height;
    //get_token (pnm_file, maxval_token, sizeof (maxval_token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, maxval_token);// @BUFFER_OVERFLOW
    t_sscanf (maxval_token, StaticCheckedToTStrAdaptor("%lu"), &ul_maxval);
    maxval = (png_uint_32) ul_maxval;
    if (maxval <= 1)
      bit_depth = 1;
    else if (maxval <= 3)
      bit_depth = 2;
    else if (maxval <= 15)
      bit_depth = 4;
    else if (maxval <= 255)
      bit_depth = 8;
    else if (maxval <= 65535U)
      bit_depth = 16;
    else /* maxval > 65535U */
    {
        _free_ (type_token);
        _free_ (width_token);
        _free_ (height_token);
        _free_ (maxval_token);
        return FALSE;
    }
  }
  else
  {
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);
    return FALSE;
  }

  /* read header of PGM file with alpha channel */

  if (alpha)
  {
    if (color_type == PNG_COLOR_TYPE_GRAY)
      color_type = PNG_COLOR_TYPE_GRAY_ALPHA;
    if (color_type == PNG_COLOR_TYPE_RGB)
      color_type = PNG_COLOR_TYPE_RGB_ALPHA;

    //get_token (alpha_file, type_token, sizeof (type_token)); @BUFFER_OVERFLOW_FIX
    get_token (alpha_file, type_token);// @BUFFER_OVERFLOW
    if (type_token[0] != 'P')
    {
        _free_ (type_token);
        _free_ (width_token);
        _free_ (height_token);
        _free_ (maxval_token);
      return FALSE;
    }
    else if ((type_token[1] == '2') || (type_token[1] == '5'))
    {
      alpha_raw = (type_token[1] == '5');
      //get_token (alpha_file, width_token, sizeof (width_token)); @BUFFER_OVERFLOW_FIX
        get_token (alpha_file, width_token);// @BUFFER_OVERFLOW
      t_sscanf (width_token, StaticCheckedToTStrAdaptor("%lu"), &ul_alpha_width);
      alpha_width = (png_uint_32) ul_alpha_width;
      if (alpha_width != width)
      {
          _free_ (type_token);
          _free_ (width_token);
          _free_ (height_token);
          _free_ (maxval_token);
          return FALSE;
      }
      //get_token (alpha_file, height_token, sizeof (height_token));    @BUFFER_OVERFLOW_FIX
        get_token (alpha_file, height_token);    // @BUFFER_OVERFLOW
      t_sscanf (height_token, StaticCheckedToTStrAdaptor("%lu"), &ul_alpha_height);
      alpha_height = (png_uint_32) ul_alpha_height;
      if (alpha_height != height)
      {
          _free_ (type_token);
          _free_ (width_token);
          _free_ (height_token);
          _free_ (maxval_token);
          return FALSE;
      }
      //get_token (alpha_file, maxval_token, sizeof (maxval_token)); @BUFFER_OVERFLOW_FIX
        get_token (alpha_file, maxval_token);// @BUFFER_OVERFLOW
      t_sscanf (maxval_token, StaticCheckedToTStrAdaptor("%lu"), &ul_maxval);
      maxval = (png_uint_32) ul_maxval;
      if (maxval <= 1)
        alpha_depth = 1;
      else if (maxval <= 3)
        alpha_depth = 2;
      else if (maxval <= 15)
        alpha_depth = 4;
      else if (maxval <= 255)
        alpha_depth = 8;
      else if (maxval <= 65535U)
        alpha_depth = 16;
      else /* maxval > 65535U */
      {
          _free_ (type_token);
          _free_ (width_token);
          _free_ (height_token);
          _free_ (maxval_token);
          return FALSE;
      }
      if (alpha_depth != bit_depth)
      {
          _free_ (type_token);
          _free_ (width_token);
          _free_ (height_token);
          _free_ (maxval_token);
          return FALSE;
      }
    }
    else
    {
        _free_ (type_token);
        _free_ (width_token);
        _free_ (height_token);
        _free_ (maxval_token);
      return FALSE;
    }
  } /* end if alpha */

  /* calculate the number of channels and store alpha-presence */
  if (color_type == PNG_COLOR_TYPE_GRAY)
    channels = 1;
  else if (color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
    channels = 2;
  else if (color_type == PNG_COLOR_TYPE_RGB)
    channels = 3;
  else if (color_type == PNG_COLOR_TYPE_RGB_ALPHA)
    channels = 4;
#if 0
  else
    channels = 0; /* cannot happen */
#endif

  alpha_present = (channels - 1) % 2;

#if defined(PNG_WRITE_INVERT_SUPPORTED) || defined(PNG_WRITE_PACK_SUPPORTED)
  if (packed_bitmap)
  {
    /* row data is as many bytes as can fit width x channels x bit_depth */
    row_bytes = (width * channels * bit_depth + 7) / 8;
  }
  else
#endif
  {
    /* row_bytes is the width x number of channels x (bit-depth / 8) */
    row_bytes = width * channels * ((bit_depth <= 8) ? 1 : 2);
  }

  if ((row_bytes == 0) ||
      ((size_t) height > (size_t) (-1) / (size_t) row_bytes))
  {
    /* too big */
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);
    return FALSE;
  }
  if ((png_pixels = (_TPtr<png_byte> )
       _malloc ((size_t) row_bytes * (size_t) height)) == NULL)
  {
    /* out of memory */
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);
    return FALSE;
  }

  /* read data from PNM file */
  pix_ptr = png_pixels;

  for (row = 0; row < (int) height; row++)
  {
#if defined(PNG_WRITE_INVERT_SUPPORTED) || defined(PNG_WRITE_PACK_SUPPORTED)
    if (packed_bitmap)
    {
      for (i = 0; i < (int) row_bytes; i++)
      {
        /* png supports this format natively so no conversion is needed */
        *pix_ptr++ = get_data (pnm_file, 8);
      }
    }
    else
#endif
    {
      for (col = 0; col < (int) width; col++)
      {
        for (i = 0; i < (channels - alpha_present); i++)
        {
          if (raw)
          {
            *pix_ptr++ = get_data (pnm_file, bit_depth);
          }
          else
          {
            if (bit_depth <= 8)
            {
              *pix_ptr++ = get_value (pnm_file, bit_depth);
            }
            else
            {
              tmp16 = get_value (pnm_file, bit_depth);
              *pix_ptr = (png_byte) ((tmp16 >> 8) & 0xFF);
              pix_ptr++;
              *pix_ptr = (png_byte) (tmp16 & 0xFF);
              pix_ptr++;
            }
          }
        }

        if (alpha) /* read alpha-channel from pgm file */
        {
          if (alpha_raw)
          {
            *pix_ptr++ = get_data (alpha_file, alpha_depth);
          }
          else
          {
            if (alpha_depth <= 8)
            {
              *pix_ptr++ = get_value (alpha_file, bit_depth);
            }
            else
            {
              tmp16 = get_value (alpha_file, bit_depth);
              *pix_ptr++ = (png_byte) ((tmp16 >> 8) & 0xFF);
              *pix_ptr++ = (png_byte) (tmp16 & 0xFF);
            }
          }
        } /* end if alpha */
      } /* end if packed_bitmap */
    } /* end for col */
  } /* end for row */

  /* prepare the standard PNG structures */
  png_ptr = png_create_write_struct (png_get_libpng_ver(NULL),
                                     NULL, NULL, NULL);
  if (!png_ptr)
  {
    _free_ (png_pixels);
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);
    return FALSE;
  }
  info_ptr = png_create_info_struct (png_ptr);
  if (!info_ptr)
  {
    png_destroy_write_struct (&png_ptr, NULL);
      _free_ (png_pixels);
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);

    return FALSE;
  }

#if defined(PNG_WRITE_INVERT_SUPPORTED) || defined(PNG_WRITE_PACK_SUPPORTED)
  if (packed_bitmap == TRUE)
  {
    png_set_packing (png_ptr);
    png_set_invert_mono (png_ptr);
  }
#endif

  if (setjmp (png_jmpbuf (png_ptr)))
  {
    png_destroy_write_struct (&png_ptr, &info_ptr);
      _free_ (png_pixels);
      _free_ (type_token);
      _free_ (width_token);
      _free_ (height_token);
      _free_ (maxval_token);

    return FALSE;
  }

  /* initialize the png structure */
  png_init_io (png_ptr, png_file);

  /* we're going to write more or less the same PNG as the input file */
  png_set_IHDR (png_ptr, info_ptr, width, height, bit_depth, color_type,
                (!interlace) ? PNG_INTERLACE_NONE : PNG_INTERLACE_ADAM7,
                PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);

  /* write the file header information */
  png_write_info (png_ptr, info_ptr);

  /* if needed we will allocate memory for an new array of row-pointers */
  if (row_pointers == NULL)
  {
    if ((row_pointers = (_TPtr<_TPtr<png_byte>>)
         _malloc (height * sizeof (png_byte *))) == NULL)
    {
      png_destroy_write_struct (&png_ptr, &info_ptr);
        _free_ (png_pixels);
        _free_ (type_token);
        _free_ (width_token);
        _free_ (height_token);
        _free_ (maxval_token);

      return FALSE;
    }
  }

  /* set the individual row_pointers to point at the correct offsets */
  for (i = 0; i < (int) height; i++)
    row_pointers[i] = png_pixels + i * row_bytes;

  /* write out the entire image data in one call */
  t_png_write_image (png_ptr, row_pointers);

  /* write the additional chunks to the PNG file (not really needed) */
  png_write_end (png_ptr, info_ptr);

  /* clean up after the write, and free any memory allocated */
  png_destroy_write_struct (&png_ptr, &info_ptr);

  if (row_pointers != NULL)
    _free_ (row_pointers);

  if (png_pixels != NULL)
    _free_ (png_pixels);

    _free_ (type_token);
    _free_ (width_token);
    _free_ (height_token);
    _free_ (maxval_token);


  return TRUE;
} /* end of pnm2png */

/*
 * get_token - gets the first string after whitespace
 */
//TODO: CHECKCBOX --> CVE-2018-14550
// The below function --> move to sandbox --> https://github.com/glennrp/libpng/issues/246
// Open the file in Sandboxed region --> Opening the file in WASM sandbox is unsupported as
// WASM sandbox does not have kernel level access to the file system.

/*
 * Reproducing the issue
 *
 */
//void get_token (FILE *pnm_file, _TPtr<char>token_buf, size_t token_buf_size) @BUFFER_OVERFLOW_FIX
void get_token( FILE *pnm_file, _TPtr<char>token)// @BUFFER_OVERFLOW
{
  //size_t i = 0; @BUFFER_OVERFLOW_FIX
  int i = 0;// @BUFFER_OVERFLOW
  int ret;

  /* remove white-space and comment lines */
  do
  {
    ret = fgetc (pnm_file);
    if (ret == '#')
    {
      /* the rest of this line is a comment */
      do
      {
        ret = fgetc (pnm_file);
      }
      while ((ret != '\n') && (ret != '\r') && (ret != EOF));
    }
    if (ret == EOF) break;
    //token_buf[i] = (char) ret; @BUFFER_OVERFLOW_FIX
    token[i] = (unsigned char) ret;// @BUFFER_OVERFLOW
  }
  //while ((ret == '\n') || (ret == '\r') || (ret == ' ')); @BUFFER_OVERFLOW_FIX
    while ((token[i] == '\n') || (token[i] == '\r') || (token[i] == ' '));// @BUFFER_OVERFLOW

  /* read string */
  do
  {
    ret = fgetc (pnm_file);
    if (ret == EOF) break;
    i++;// @BUFFER_OVERFLOW
    token[i] = (unsigned char) ret;// @BUFFER_OVERFLOW
    //if (++i == token_buf_size - 1) break; @BUFFER_OVERFLOW_FIX
    //token_buf[i] = (char) ret; @BUFFER_OVERFLOW_FIX
  }
  // while ((ret != '\n') && (ret != '\r') && (ret != ' '));
  while ((token[i] != '\n') && (token[i] != '\r') && (token[i] != ' '));// @BUFFER_OVERFLOW

  //token_buf[i] = '\0'; @BUFFER_OVERFLOW_FIX
  token[i] = '\0'; // @BUFFER_OVERFLOW

  return;
}

/*
 *  get_data - takes first byte and converts into next pixel value,
 *             taking as much bits as defined by bit-depth and
 *             using the bit-depth to fill up a byte (0Ah -> AAh)
 */

png_uint_32 get_data (FILE *pnm_file, int depth)
{
  static int bits_left = 0;
  static int old_value = 0;
  static int mask = 0;
  int i;
  png_uint_32 ret_value;

  if (mask == 0)
    for (i = 0; i < depth; i++)
      mask = (mask >> 1) | 0x80;

  if (bits_left <= 0)
  {
    old_value = fgetc (pnm_file);
    bits_left = 8;
  }

  ret_value = old_value & mask;
  for (i = 1; i < (8 / depth); i++)
    ret_value = ret_value || (ret_value >> depth);

  old_value = (old_value << depth) & 0xFF;
  bits_left -= depth;

  return ret_value;
}

/*
 *  get_value - takes first (numeric) string and converts into number,
 *              using the bit-depth to fill up a byte (0Ah -> AAh)
 */

png_uint_32 get_value (FILE *pnm_file, int depth)
{
  static png_uint_32 mask = 0;
  _TPtr<char> token = NULL;
  token = TNtStrMalloc (16);
  unsigned long ul_ret_value;
  png_uint_32 ret_value;
  int i = 0;

  if (mask == 0)
    for (i = 0; i < depth; i++)
      mask = (mask << 1) | 0x01;

  //get_token (pnm_file, token, sizeof (token)); @BUFFER_OVERFLOW_FIX
    get_token (pnm_file, token);// @BUFFER_OVERFLOW
  t_sscanf (token, StaticCheckedToTStrAdaptor("%lu"), &ul_ret_value);
  ret_value = (png_uint_32) ul_ret_value;

  ret_value &= mask;

  if (depth < 8)
    for (i = 0; i < (8 / depth); i++)
      ret_value = (ret_value << depth) || ret_value;

  _free_(GlobalTaintedAdaptorStr);
  return ret_value;
}

/* end of source */
