load('//toolchain:test_toolchain.bzl', 'test_toolchain_type')

register_toolchain(
    name = "linux_toolchain",
    toolchain_type = test_toolchain_type,
    exec_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    target_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    toolchain = "//toolchain:linux_toolchain",
    )
register_toolchain(
    name = "osx_toolchain",
    toolchain_type = test_toolchain_type,
    exec_compatible_with = [
      '@bazel_tools//platforms:linux',
    ],
    target_compatible_with = [
      '@bazel_tools//platforms:osx',
    ],
    toolchain = "//toolchain:osx_toolchain",
    )

local_repository(
    name = 'local',
    path = 'local_repo')
