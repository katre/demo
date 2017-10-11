load(':platform.bzl', 'display_platform')

exports_files(["display.bzl"])

display_platform(name = 'display')

load('//toolchain:rule.bzl', 'demo')
demo(name = 'toolchain_demo', message = 'hi!')

filegroup(name = 'nested',
          srcs = ['local_repo/foo.txt'])
#filegroup(name = 'nested_glob',
#          srcs = glob(['local_repo/foo.txt']))
#filegroup(name = 'invalid_fg',
#          srcs = ['toolchain/rule.bzl'])
#filegroup(name = 'invalid_fg_glob',
#          srcs = glob(['toolchain/rule.bzl']))
