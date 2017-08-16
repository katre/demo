constraint_setting(
    name = "setting1",
    #default_value = ":value1a",
)

constraint_value(
    name = "value1a",
    constraint_setting = ":setting1"
)

constraint_value(
    name = "value1b",
    constraint_setting = ":setting1"
)

platform(
    name = "explicit",
    constraint_values = [":value1b"]
)

platform(
    name = "implied",
    constraint_values = []
)

load(":display_constraint.bzl", "display_constraint")

display_constraint(
    name="display_explicit",
    platform = ":explicit",
    constraint_setting = ":setting1")

display_constraint(
    name="display_implied",
    platform = ":implied",
    constraint_setting = ":setting1")
