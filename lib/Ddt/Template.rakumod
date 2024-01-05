unit module Ddt::Template;

our sub template($module, $license, $relaxed-name) {
    my %template =
gitignore => qq:to/EOF/,
/blib/
/src/*.o
/src/Makefile
/resources/*.so
/resources/*.dylib
.precomp/
# Prove saved state
.prove
# Vim swap files
[._]*.s[a-w][a-z]
[._]s[a-w][a-z]
# Vim session
Session.vim
# temporary
.netrwhist
*~
# Vim auto-generated tag files
tags
EOF

github-action => Q:to/EOF/,
name: test

on:
  push:
    branches:
      - '*'
    tags-ignore:
      - '*'
  pull_request:
  workflow_dispatch:

jobs:
  raku:
    strategy:
      fail-fast: false
      matrix:
        os:
          - ubuntu-latest
          - macos-latest
          - windows-latest
        raku-version:
          - "latest"
          - "2023.08"
    runs-on: ${{ matrix.os }}
    steps:
      - uses: actions/checkout@v4
      - uses: Raku/setup-raku@v1
        with:
          raku-version: ${{ matrix.raku-version }}
      - name: Run tests and Install
        run: zef install . --debug
EOF

test => qq:to/END_OF_TEST/,
use v6.d;
#`(
$license.header()
)
use Test;
use $module;

pass "replace me";

done-testing;
END_OF_TEST

test-meta => qq:to/END_OF_META_TEST/,
use v6.d;
#`(
$license.header()
)
use Test;
use Test::META;

plan 1;

# That's it
meta-ok relaxed-name => $relaxed-name;
END_OF_META_TEST

module => qq:to/END_OF_MODULE/,
use v6.d;
#`(
$license.header()
)

unit class $module;


=begin pod

=head1 NAME

$module - blah blah blah

=head1 SYNOPSIS

  use $module;

=head1 DESCRIPTION

$module is ...

{ '=head1 AUTHOR' if $license.holders.elems == 1 }
{ '=head1 AUTHORS' if $license.holders.elems > 1 }

{ join: $license.holders.map( *.name ), "\n" }

=head1 COPYRIGHT AND LICENSE

$license.note()

=end pod
END_OF_MODULE

    %template;
}

