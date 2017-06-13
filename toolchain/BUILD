load(':test_toolchain.bzl', 'test_toolchain')

filegroup(name = 'dep_rule')
test_toolchain(
    name = 'linux_toolchain',
    exec_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    target_compatible_with = [
      '@bazel_tools//platforms:osx',
    ],
    extra_label = ':dep_rule',
    extra_str = 'bar',
)

