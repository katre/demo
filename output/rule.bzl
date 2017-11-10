def _impl(ctx):
  print('%s' % (ctx.attr.foo))
  ctx.file_action(
      output=ctx.outputs.out,
      content="Hello World!"
  )
  return []

demo_rule = rule(
  _impl,
  attrs = {
    'foo': attr.string(),
  },
  outputs = {
    'out': '%{foo}.txt'
  })

def _output_func_2(foo):
  return {
    'out': foo + '.txt'
  }

demo_rule_2 = rule(
  _impl,
  attrs = {
    'foo': attr.string(),
  },
  outputs = _output_func_2,
)

