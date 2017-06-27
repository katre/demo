load(':demo_toolchain.bzl', 'demo_toolchain')

toolchain_type(name = 'demo_toolchain')

toolchain(
    name = "linux_toolchain",
    toolchain_type = ':demo_toolchain',
    exec_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    target_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    toolchain = ":linux_demo_toolchain")

toolchain(
    name = "osx_toolchain",
    toolchain_type = ':demo_toolchain',
    exec_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    target_compatible_with = [
      '@bazel_tools//platforms:osx',
    ],
    toolchain = "//toolchain:osx_demo_toolchain")

filegroup(name = 'osx_dep')
filegroup(name = 'linux_dep')

demo_toolchain(
    name = 'osx_demo_toolchain',
    extra_label = ':osx_dep',
    extra_str = 'osx',
)

demo_toolchain(
    name = 'linux_demo_toolchain',
    extra_label = ':linux_dep',
    extra_str = 'linux',
)

