def _impl(ctx):
  toolchain = ctx.toolchains['//toolchain:demo_toolchain']
  message = ctx.attr.message
  print('Demo: toolchain part: %s, rule part: %s' % (toolchain.extra_str, message))
  return []

demo = rule(
    implementation = _impl,
    attrs = {
      'message': attr.string(),
    },
    toolchains = ["//toolchain:demo_toolchain"],
)
