# Blosxom - the Zen of Blogging, resurrected

## What

This is (yet another) attempt to update Blosxom for the (post)modern
Perl world.  This attempt is moving toward a few goals:

  - Update the Perl code and dist packaging to modern times
  - Update the default output to render HTML5, and maybe add JSON aside
    from RSS output
  - Refactor to split off static site generation from dynamic rendering
  - (Optionally) redo the dynamic rendering from CGI- to PSGI-based
    backend using Plack

I'm particularly interested in making blosxom more of a static site
generator in the fashion of other tools like Jekyll and Octopress;
dynamic page generation made a lot of sense back then when CGI dominated
the scene, now it seems that area would be served better with glues like
PSGI/Plack.

## Why

Firstly, because I can.

Secondly, because I wanted a static site generator in Perl and Blosxom
came to my mind first. I know there are other site generators out there,
and they're probably better feature-wise, but I was already familiar
with Blosxom since way back (I remember my old blog back then was
powered by blosxom.cgi).

## How

    git clone https://github.com/zakame/blosxom.git

If you'll be on Perl v5.20 (which is not too soon actually,) you
probably also want to install the `CGI` module (as that module is going
away for the next stable release of Perl:)

    cpanm --installdeps .

This will also pull in `YAML` and `Test::Differences` as dependencies
for the testsuite in `t/`.

## Who

Thanks first and foremost to @raelity, for making this wonderful piece
of software.

Kudos too to the people who carried it on at SourceForge, notably
@xtaran, @gavincarr, @rhonda, and @kscaldef.  Aside from them, there's
also the good people behind @blosxom-fanatics who are maintaining their
own versions of this great software.  And lastly, the many other authors
of Blosxom plugins great and small, extending the system in nearly the
same fashion an expert user of an editor like Emacs or Vim would
customize their setup for their needs.
 

### Other Blosxoms Blooming

I'm certainly not the only one doing this.  Many others have done this
before, as I said above, and still maintain (more or less) their own
releases:

  - http://blosxom.sf.net - where I got the last v2.1.2 release from.
    Apparently they have a git too (I didn't know SourceForge has git
    until now, I really should have just forked from it, but oh well...)
  - https://blosxom-fanatics.github.io - some Japanese hackers maintain
    their own set of GitHub repositories for Blosxom, including a
    Starter Kit full of preset plugins and flavours, as well as helpers
    for other tools (e.g. zsh, emacs-lisp, even Io.)
  - http://muli.cc - Emanuel Sprosec maintains a great resource for
    blosxom, especially a plugin directory some 400 strong.  He also
    manages some communities on Facebook and Google+.

## When

There's no when; version number bumps like from 2.1.2 to "4.0.0" are
just for mnemonics.  But in case you're wondering why the gap, it
appears there there's a Blosxom v3
(https://github.com/blosxom-fanatics/version3) that Rael was working on
back then (see http://bit.ly/17ZEq06).  One can say that going back from
the modular Blosxom.pm in v3 to plain old single-file blosxom.cgi is a
regression, but I suppose it works for this particular application.
