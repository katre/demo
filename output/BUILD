load(':rule.bzl', 'demo_rule', 'demo_rule_2')

demo_rule(
  name = 'demo1',
  foo = 'a str')

demo_rule(
  name = 'demo2',
  foo = select({
    '//conditions:default': 'selected string'
  }))

#demo_rule_2(
#  name = 'demo2',
#  foo = 'another_st')

