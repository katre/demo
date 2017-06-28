load(':platform.bzl', 'display_platform')

exports_files(["display.bzl"])

display_platform(name = 'display')

load('//toolchain:rule.bzl', 'demo')
demo(name = 'toolchain_demo', message = 'hi!')
