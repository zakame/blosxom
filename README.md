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

## Why

Mostly, because I can.

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
also the good people behind @blosxom-fanatics and http://muli.cc who are
maintaining their own versions of this great software.

## When

This `v4.0.0` "release" isn't, it is just another way for me to say that
this blosxom is different, it is my own spin of it.  There's not really
going to be any _official_ release of this from me soon, the version
bump from 2.1.2 to 4.x is just mnemonic.  Also, there's actually a
Blosxom v3 release made by Rael from way back (I think someone from
blosxom-fanatics was able to save it on GitHub.)
