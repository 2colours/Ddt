[![Build Status](https://travis-ci.org/kalkin/mi6.svg?branch=master)](https://travis-ci.org/kalkin/mi6)

NAME
====

Ddt - minimal authoring tool for Perl6

SYNOPSIS
========

    > ddt new Foo::Bar # create Foo-Bar distribution
    > cd Foo-Bar
    > ddt build        # build the distribution and re-generate README.md & META6.json
    > ddt test         # Run tests

INSTALLATION
============

    # with panda
    > panda install Ddt

    # or, with zef
    > zef install Ddt

DESCRIPTION
===========

Ddt is a minimal authoring tool for Perl6. Features are:

  * Create minimal distribution skeleton for Perl6

  * Generate README.md from lib/Main/Module.pm6's pod

FAQ
===

  * How can I manage depends, build-depends, test-depends?

    Write them to META6.json directly :)

  * Where is Changes file?

    TODO

  * Where is the spec of META6.json or META.info?

    Maybe https://github.com/perl6/ecosystem/blob/master/spec.pod or http://design.perl6.org/S22.html

  * How do I remove travis badge?

    Remove .travis.yml

SEE ALSO
========

[https://github.com/tokuhirom/Minilla](https://github.com/tokuhirom/Minilla)

[https://github.com/rjbs/Dist-Zilla](https://github.com/rjbs/Dist-Zilla)

AUTHOR
======

Shoichi Kaji <skaji@cpan.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2015 Shoichi Kaji

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.
