def _display_provider_impl(target, ctx):
  provider = target[platform_common.PlatformInfo]
  print(provider)
  return []

display_provider = aspect(
    implementation = _display_provider_impl,
    attr_aspects = [],
    attrs = {
    },
)
