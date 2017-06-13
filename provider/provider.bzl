item = provider()

def _make_provider(ctx):
  i = item(foo = ctx.attr.foo)
  return [i]

make_provider = rule(
    implementation = _make_provider,
    attrs = {
        'foo': attr.string(),
    })

def _use_provider(ctx):
  i = ctx.attr.dep[item]
  print('Found provider: ' + str(i))
  return struct()

use_provider = rule(
    implementation = _use_provider,
    attrs = {
        'dep': attr.label(providers = [item]),
    })
