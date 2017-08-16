constraint_setting(
    name = "setting1",
)

constraint_value(
    name = "value1a",
    constraint_setting = ":setting1",
)

constraint_value(
    name = "value1b",
    constraint_setting = ":setting1",
)

platform(
    name = "explicit",
    constraint_values = [":value1b"],
)

platform(
    name = "implied",
    constraint_values = [],
)
