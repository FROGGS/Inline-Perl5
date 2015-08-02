#!/usr/bin/env perl6

use v6;
use Test;

use lib:from<Perl5> <t/lib>;
use TestV6:from<Perl5>;

is(Foo::Bar::TestV6::greet('world'), 'hello world');
is(Foo::Bar::TestV6.new('nice', name => 'world').hello, 'hello nice world');
is(
    EVAL(q/Foo::Bar::TestV6->create(foo => 'bar', name => 'world')/, :lang<Perl5>).hello,
    'hello bar world',
);
is(Foo::Bar::TestV6.new.context, 'array');
is(Foo::Bar::TestV6.new.test_scalar_context, 'scalar');
is(Foo::Bar::TestV6.new.test_array_context, 'array');
is(Foo::Bar::TestV6.new.test_call_context, 'array');

done;

# vim: ft=perl6
