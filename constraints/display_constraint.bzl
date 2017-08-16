def _display_constraint_impl(ctx):
  platform = ctx.attr.platform[platform_common.PlatformInfo]
  constraint_setting = ctx.attr.constraint_setting[platform_common.ConstraintSettingInfo]
  value = platform.get_constraint(constraint_setting)
  value_str = "<null>"
  if value:
    value_str = str(value.label)
  print("Platform %s, setting %s has value %s" % (
      platform.label,
      constraint_setting.label,
      value_str))
  return []

display_constraint = rule(
    implementation = _display_constraint_impl,
    attrs = {
        "platform" :attr.label(providers = [platform_common.PlatformInfo]),
        "constraint_setting" : attr.label(providers = [platform_common.ConstraintSettingInfo]),
        })
