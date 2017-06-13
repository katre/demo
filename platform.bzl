def _display_platform_impl(ctx):
  platform_data = ctx.fragments.platform
  print(platform_data)
  print(dir(platform_data))
  print(platform_data.execution_platform)
  print(platform_data.platforms)
  return []

display_platform = rule(
    implementation = _display_platform_impl,
    fragments = ['platform'],
)
