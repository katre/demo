def _impl(ctx):
  toolchain = platform_common.ToolchainInfo(
      type = Label('//toolchain:demo_toolchain'),
      extra_label = ctx.attr.extra_label,
      extra_str = ctx.attr.extra_str,
  )
  return [toolchain]

demo_toolchain = rule(
    implementation = _impl,
    attrs = {
       'extra_label': attr.label(),
       'extra_str': attr.string(),
    }
)
