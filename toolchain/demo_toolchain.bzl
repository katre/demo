def _impl(ctx):
  toolchain_type = ctx.attr._toolchain_type[platform_common.ToolchainTypeInfo]
  toolchain = platform_common.ToolchainInfo(
      type = toolchain_type,
      extra_label = ctx.attr.extra_label,
      extra_str = ctx.attr.extra_str,
  )
  return [toolchain]

demo_toolchain = rule(
    implementation = _impl,
    attrs = {
        '_toolchain_type': attr.label(default = Label('//toolchain:demo_toolchain')),
       'extra_label': attr.label(),
       'extra_str': attr.string(),
    }
)
