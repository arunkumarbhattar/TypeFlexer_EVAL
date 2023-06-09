/*
 * ProFTPD - FTP server daemon
 * Copyright (c) 2013-2016 The ProFTPD Project team
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Suite 500, Boston, MA 02110-1335, USA.
 *
 * As a special exemption, The ProFTPD Project team and other respective
 * copyright holders give permission to link this program with OpenSSL, and
 * distribute the resulting executable, without including the source code for
 * OpenSSL in the source distribution.
 */

/* Resource limits implementation */

#include "conf.h"
#include "/usr/include/x86_64-linux-gnu/sys/resource.h"
static int get_rlimit(int resource, __rlim_t *current, __rlim_t *max) {
  struct rlimit rlim;
  int res;

  if (current == NULL &&
      max == NULL) {
    errno = EINVAL;
    return -1;
  }

  res = getrlimit(resource, &rlim);
  if (res < 0) {
    /* Some libcs use EPERM instead of ENOSYS; weird. */
    if (errno == EPERM) {
      errno = ENOSYS;
    }

    return res;
  }

  if (current != NULL) {
    *current = rlim.rlim_cur;
  }

  if (max != NULL) {
    *max = rlim.rlim_max;
  }

  return 0;
}

static int set_rlimit(int resource, __rlim_t current, __rlim_t max) {
  struct rlimit rlim;
  int res;

  rlim.rlim_cur = current;
  rlim.rlim_max = max;

  res = setrlimit(resource, &rlim);
  return res;
}

int pr_rlimit_get_core(__rlim_t *current, __rlim_t *max) {
#if defined(RLIMIT_CORE)
  return get_rlimit(RLIMIT_CORE, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_CORE */
}

int pr_rlimit_set_core(__rlim_t current, __rlim_t max) {
#if defined(RLIMIT_CORE)
  return set_rlimit(RLIMIT_CORE, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_CORE */
}

int pr_rlimit_get_cpu(__rlim_t *current, __rlim_t *max) {
#if defined(RLIMIT_CPU)
  return get_rlimit(RLIMIT_CPU, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_CPU */
}

int pr_rlimit_set_cpu(__rlim_t current, __rlim_t max) {
#if defined(RLIMIT_CPU)
  return set_rlimit(RLIMIT_CPU, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_CPU */
}

int pr_rlimit_get_files(__rlim_t *current, __rlim_t *max) {
#if defined(RLIMIT_NOFILE)
  return get_rlimit(RLIMIT_NOFILE, current, max);

#elif defined(RLIMIT_OFILE)
  return get_rlimit(RLIMIT_OFILE, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_NOFILE or RLIMIT_OFILE */
}

int pr_rlimit_set_files(__rlim_t current, __rlim_t max) {
#if defined(RLIMIT_NOFILE)
  return set_rlimit(RLIMIT_NOFILE, current, max);

#elif defined(RLIMIT_OFILE)
  return set_rlimit(RLIMIT_OFILE, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_NOFILE or RLIMIT_OFILE */
}

int pr_rlimit_get_memory(__rlim_t *current, __rlim_t *max) {
#if defined(RLIMIT_AS)
  return get_rlimit(RLIMIT_AS, current, max);

#elif defined(RLIMIT_DATA)
  return get_rlimit(RLIMIT_DATA, current, max);

#elif defined(RLIMIT_VMEM)
  return get_rlimit(RLIMIT_VMEM, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_AS, RLIMIT_DATA, or RLIMIT_VMEM. */
}

int pr_rlimit_set_memory(__rlim_t current, __rlim_t max) {
#if defined(RLIMIT_AS)
  return set_rlimit(RLIMIT_AS, current, max);

#elif defined(RLIMIT_DATA)
  return set_rlimit(RLIMIT_DATA, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_AS or RLIMIT_DATA */
}

int pr_rlimit_get_nproc(__rlim_t *current, __rlim_t *max) {
#if defined(RLIMIT_NPROC)
  return get_rlimit(RLIMIT_NPROC, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_NPROC */
}

int pr_rlimit_set_nproc(__rlim_t current, __rlim_t max) {
#if defined(RLIMIT_NPROC)
  return set_rlimit(RLIMIT_NPROC, current, max);

#else
  errno = ENOSYS;
  return -1;
#endif /* No RLIMIT_NPROC */
}

