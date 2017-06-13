load(':provider.bzl', 'make_provider', 'use_provider')

make_provider(
    name = 'prov1',
    foo = 'bob')

make_provider(
    name = 'prov2',
    foo = 'allen')

use_provider(
    name = 'use1',
    dep = ':prov1')
