[![Build Status](https://travis-ci.org/kalkin/Ddt.svg?branch=master)](https://travis-ci.org/kalkin/Ddt)

NAME
====

Ddt - Distribution Development Tool a replacement for mi6

SYNOPSIS
========

    > ddt new Foo::Bar # create Foo-Bar distribution
    > cd Foo-Bar
    > ddt build        # build the distribution and re-generate README.md & META6.json
    > ddt test         # Run tests

INSTALLATION
============

    # with zef
    > zef install Ddt

DESCRIPTION
===========

Ddt is a an authoring tool for Perl6. 

Features
--------

  * Create a distribution skeleton for Perl6

  * Generate README.md from lib/Main/Module.pm6's pod

  * Generate a META6.json

  * Generate a META test with 

  * Support for different licenses

Differences to Mi6
------------------

  * Support for different licenses via `License::Software`

  * META6 is generated using `META6`

  * Meta test

  * Use zef for tests

  * Extended .gitignore

  * Support for different licenses

  * Support for Distributions with a hyphen in the namel

FAQ
===

  * How can I manage depends, build-depends, test-depends?

    Write them to META6.json directly :)

  * Where is Changes file?

    TODO

  * Where is the spec of META6.json?

    Maybe https://github.com/perl6/ecosystem/blob/master/spec.pod or http://design.perl6.org/S22.html

  * How do I remove travis badge?

    Remove .travis.yml

SEE ALSO
========

[https://github.com/tokuhirom/Minilla](https://github.com/tokuhirom/Minilla)

[https://github.com/rjbs/Dist-Zilla](https://github.com/rjbs/Dist-Zilla)

AUTHOR
======

  * Bahtiar `kalkin-` Gadimov <bahtiar@gadimov.de>

  * Shoichi Kaji <skaji@cpan.org>

COPYRIGHT AND LICENSE
=====================

  * Copyright © 2015 Shoichi Kaji

  * Copyright © 2016-2017 Bahtiar `kalkin-` Gadimov

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.
