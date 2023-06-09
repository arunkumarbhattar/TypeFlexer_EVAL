/*
     This file is part of libmicrohttpd
     Copyright (C) 2007 Christian Grothoff (and other contributing authors)
     Copyright (C) 2016-2022 Evgeny Grin (Karlson2k)

     This library is free software; you can redistribute it and/or
     modify it under the terms of the GNU Lesser General Public
     License as published by the Free Software Foundation; either
     version 2.1 of the License, or (at your option) any later version.

     This library is distributed in the hope that it will be useful,
     but WITHOUT ANY WARRANTY; without even the implied warranty of
     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
     Lesser General Public License for more details.

     You should have received a copy of the GNU Lesser General Public
     License along with this library; if not, write to the Free Software
     Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/
/**
 * @file fileserver_example.c
 * @brief minimal example for how to use libmicrohttpd to serve files
 * @author Christian Grothoff
 * @author Karlson2k (Evgeny Grin)
 */

#include "platform.h"
#include <microhttpd.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif /* HAVE_UNISTD_H */
#ifdef HAVE_SYS_STAT_H
#include <sys/stat.h>
#endif /* HAVE_SYS_STAT_H */
#ifdef HAVE_FCNTL_H
#include <fcntl.h>
#endif /* HAVE_FCNTL_H */

#define PAGE \
  "<html><head><title>File not found</title></head><body>File not found</body></html>"

#ifndef S_ISREG
#define S_ISREG(x) (S_IFREG == (x & S_IFREG))
#endif /* S_ISREG */

static enum MHD_Result
ahc_echo (void *cls,
          struct MHD_Connection *connection,
          const char *url,
          const char *method,
          const char *version,
          _TPtr<const char> upload_data,
          size_t *upload_data_size, void **req_cls)
{
  static int aptr;
  struct MHD_Response *response;
  enum MHD_Result ret;
  int fd;
  struct stat buf;
  (void) cls;               /* Unused. Silent compiler warning. */
  (void) version;           /* Unused. Silent compiler warning. */
  (void) upload_data;       /* Unused. Silent compiler warning. */
  (void) upload_data_size;  /* Unused. Silent compiler warning. */

  if ( (0 != strcmp (method, MHD_HTTP_METHOD_GET)) &&
       (0 != strcmp (method, MHD_HTTP_METHOD_HEAD)) )
    return MHD_NO;              /* unexpected method */
  if (&aptr != *req_cls)
  {
    /* do never respond on first call */
    *req_cls = &aptr;
    return MHD_YES;
  }
  *req_cls = NULL;                 /* reset when done */
  /* WARNING: direct usage of url as filename is for example only!
   * NEVER pass received data directly as parameter to file manipulation
   * functions. Always check validity of data before using.
   */
  if (NULL != strstr (url, "../")) /* Very simplified check! */
    fd = -1;                       /* Do not allow usage of parent directories. */
  else
    fd = open (url + 1, O_RDONLY);
  if (-1 != fd)
  {
    if ( (0 != fstat (fd, &buf)) ||
         (! S_ISREG (buf.st_mode)) )
    {
      /* not a regular file, refuse to serve */
      if (0 != close (fd))
        abort ();
      fd = -1;
    }
  }
  if (-1 == fd)
  {
    response = MHD_create_response_from_buffer_static (strlen (PAGE),
                                                       PAGE);
    ret = MHD_queue_response (connection, MHD_HTTP_NOT_FOUND, response);
    MHD_destroy_response (response);
  }
  else
  {
    response = MHD_create_response_from_fd64 ((uint64_t) buf.st_size, fd);
    if (NULL == response)
    {
      if (0 != close (fd))
        abort ();
      return MHD_NO;
    }
    ret = MHD_queue_response (connection, MHD_HTTP_OK, response);
    MHD_destroy_response (response);
  }
  return ret;
}


int
main (int argc, char *const *argv)
{
  struct MHD_Daemon *d;
  int port;

  if (argc != 2)
  {
    printf ("%s PORT\n", argv[0]);
    return 1;
  }
  port = atoi (argv[1]);
  if ( (1 > port) || (port > 65535) )
  {
    fprintf (stderr,
             "Port must be a number between 1 and 65535.\n");
    return 1;
  }

  d = MHD_start_daemon (MHD_USE_THREAD_PER_CONNECTION
                        | MHD_USE_INTERNAL_POLLING_THREAD | MHD_USE_ERROR_LOG,
                        (uint16_t) port,
                        NULL, NULL, &ahc_echo, NULL, MHD_OPTION_END);
  if (d == NULL)
    return 1;
  (void) getc (stdin);
  MHD_stop_daemon (d);
  return 0;
}
