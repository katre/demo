def _display_toolchain_type_impl(target, ctx):
  provider = target[platform_common.ToolchainTypeInfo]
  print(provider)
  return []

display_toolchain_type = aspect(
    implementation = _display_toolchain_type_impl,
    attr_aspects = [],
    attrs = {
    },
)

def _display_registered_toolchain_impl(target, ctx):
  provider = target[platform_common.RegisteredToolchainInfo]
  print(provider)
  return []

display_registered_toolchain = aspect(
    implementation = _display_registered_toolchain_impl,
    attr_aspects = [],
    attrs = {
    },
)

def _display_toolchain_impl(target, ctx):
  provider = target[platform_common.ToolchainInfo]
  print(provider)
  return []

display_toolchain = aspect(
    implementation = _display_toolchain_impl,
    attr_aspects = [],
    attrs = {
    },
)
