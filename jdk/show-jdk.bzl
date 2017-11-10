def _display_jdk_impl(target, ctx):
  provider = target[platform_common.ToolchainInfo]
  print(provider)
  return []

display_jdk = aspect(
    implementation = _display_jdk_impl,
    attr_aspects = [],
    attrs = {
    },
)

