test_toolchain_type = platform_common.toolchain_type()

def _impl(ctx):
    toolchain = test_toolchain_type(
        exec_compatible_with = ctx.attr.exec_compatible_with,
        target_compatible_with = ctx.attr.target_compatible_with,
        extra_label = ctx.attr.extra_label,
        extra_str = ctx.attr.extra_str,
    )
    return [toolchain]

test_toolchain = rule(
    implementation = _impl,
    attrs = {
       'exec_compatible_with': attr.label_list(
           providers = [platform_common.ConstraintValueInfo]),
       'target_compatible_with': attr.label_list(
           providers = [platform_common.ConstraintValueInfo]),
       'extra_label': attr.label(),
       'extra_str': attr.string(),
    }
)
