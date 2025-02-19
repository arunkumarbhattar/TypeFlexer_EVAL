/*
 * ProFTPD - FTP server API testsuite
 * Copyright (c) 2008-2021 The ProFTPD Project team
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

#include "tests.h"

struct testsuite_info {
  const char *name;
  Suite *(*get_suite)(void);
};

static struct testsuite_info suites[] = {
  { "pool", 		tests_get_pool_suite },
  { "array", 		tests_get_array_suite },
  { "str", 		tests_get_str_suite },
  { "sets", 		tests_get_sets_suite },
  { "timers", 		tests_get_timers_suite },
  { "table", 		tests_get_table_suite },
  { "var", 		tests_get_var_suite },
  { "event", 		tests_get_event_suite },
  { "env", 		tests_get_env_suite },
  { "random", 		tests_get_random_suite },
  { "version", 		tests_get_version_suite },
  { "feat", 		tests_get_feat_suite },
  { "netaddr", 		tests_get_netaddr_suite },
  { "netacl",		tests_get_netacl_suite },
  { "class",		tests_get_class_suite },
  { "regexp",		tests_get_regexp_suite },
  { "expr",		tests_get_expr_suite },
  { "scoreboard",	tests_get_scoreboard_suite },
  { "stash",		tests_get_stash_suite },
  { "modules",		tests_get_modules_suite },
  { "cmd",		tests_get_cmd_suite },
  { "response",		tests_get_response_suite },
  { "fsio",		tests_get_fsio_suite },
  { "netio",		tests_get_netio_suite },
  { "trace",		tests_get_trace_suite },
  { "parser",		tests_get_parser_suite },
  { "pidfile",		tests_get_pidfile_suite },
  { "config",		tests_get_config_suite },
  { "auth",		tests_get_auth_suite },
  { "filter",		tests_get_filter_suite },
  { "inet",		tests_get_inet_suite },
  { "data",		tests_get_data_suite },
  { "ascii",		tests_get_ascii_suite },
  { "ctrls",		tests_get_ctrls_suite },
  { "help",		tests_get_help_suite },
  { "rlimit",		tests_get_rlimit_suite },
  { "encode",		tests_get_encode_suite },
  { "privs",		tests_get_privs_suite },
  { "display",		tests_get_display_suite },
  { "misc",		tests_get_misc_suite },
  { "json",		tests_get_json_suite },
  { "jot",		tests_get_jot_suite },
  { "redis",		tests_get_redis_suite },
  { "error",		tests_get_error_suite },

  { NULL, NULL }
};

static Suite *tests_get_suite(const char *suite) { 
  register unsigned int i;

  for (i = 0; suites[i].name != NULL; i++) {
    if (strcmp(suite, suites[i].name) == 0) {
      return (*suites[i].get_suite)();
    }
  }

  return NULL;
}

/* Comparison function for qsort */
static int cmp_doubles(const void *a, const void *b) {
    double da = *(const double *)a;
    double db = *(const double *)b;
    if (da < db)
        return -1;
    else if (da > db)
        return 1;
    else
        return 0;
}

int main(int argc, char *argv[]) {
    const char *log_file = "api-tests.log";
    const char *xml_file = "api-tests.xml";
    int overall_failed = 0;
    const int runs = 10;
    double run_times[runs];
    int i;

    /* Run tests multiple times */
    for (i = 0; i < runs; i++) {
        SRunner *runner = NULL;
        int nfailed = 0;
        char *requested = NULL;
        struct timespec start, end;
        double elapsed;

        /* Create a new test runner each iteration */
        runner = srunner_create(NULL);

        /* Set log file and optionally XML output */
        srunner_set_log(runner, log_file);
        if (getenv("PR_XML_TEST_OUTPUT")) {
            srunner_set_xml(runner, xml_file);
        }

        requested = getenv("PR_TEST_SUITE");
        if (requested != NULL) {
            Suite *suite = tests_get_suite(requested);
            if (suite != NULL) {
                srunner_add_suite(runner, suite);
            } else {
                fprintf(stderr, "No such test suite ('%s') requested via PR_TEST_SUITE\n", requested);
                srunner_free(runner);
                return EXIT_FAILURE;
            }
        } else {
            unsigned int j;
            for (j = 0; suites[j].name; j++) {
                Suite *suite = (suites[j].get_suite)();
                if (suite != NULL) {
                    srunner_add_suite(runner, suite);
                }
            }
        }

        /* Configure the Trace API to write to stderr. */
        pr_trace_use_stderr(TRUE);

        requested = getenv("PR_TEST_NOFORK");
        if (requested != NULL) {
            srunner_set_fork_status(runner, CK_NOFORK);
        } else {
            requested = getenv("CK_DEFAULT_TIMEOUT");
            if (requested == NULL) {
                setenv("CK_DEFAULT_TIMEOUT", "60", 1);
            }
        }

        /* Record start time */
        if (clock_gettime(CLOCK_MONOTONIC, &start) == -1) {
            perror("clock_gettime");
            exit(EXIT_FAILURE);
        }

        /* Run all tests in CK_NORMAL mode */
        srunner_run_all(runner, CK_NORMAL);

        /* Record end time */
        if (clock_gettime(CLOCK_MONOTONIC, &end) == -1) {
            perror("clock_gettime");
            exit(EXIT_FAILURE);
        }

        /* Calculate elapsed time in seconds */
        elapsed = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1e9;
        run_times[i] = elapsed;

        nfailed = srunner_ntests_failed(runner);
        overall_failed += nfailed;

        srunner_free(runner);

        printf("Run %d: elapsed time = %.3f seconds, failed tests = %d\n", i+1, elapsed, nfailed);
    }

    /* Sort the run times to compute the median */
    qsort(run_times, runs, sizeof(double), cmp_doubles);
    double median;
    if (runs % 2 == 0) {
        median = (run_times[runs/2 - 1] + run_times[runs/2]) / 2.0;
    } else {
        median = run_times[runs/2];
    }

    printf("Median test execution time over %d runs: %.3f seconds\n", runs, median);

    if (overall_failed != 0) {
        fprintf(stderr, "-------------------------------------------------\n");
        fprintf(stderr, "FAILED in %d tests across all runs\n", overall_failed);
        fprintf(stderr, "Please send email to:\n");
        fprintf(stderr, "  proftp-devel@lists.sourceforge.net\n");
        fprintf(stderr, "containing the `%s' file (in the tests/ directory)\n", log_file);
        fprintf(stderr, "and the output from running `proftpd -V'\n");
        fprintf(stderr, "-------------------------------------------------\n");

        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}