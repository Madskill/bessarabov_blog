# Perl versions available in Travis CI

```
{
    "date_time_msk" : "2017-03-13 13:24:54"
}
```

[Travis CI](https://travis-ci.org/) — is a marvelous system to run test in open
source projects. Travis CI can work with programming language Perl, unfortunately
in [Travis CI documentation](https://docs.travis-ci.com/user/languages/perl/) there
is no complete list of Perl versions Travis CI can work with.

I made several experiments to find out what Perl versions are supported in Travis CI.

Here is .travis.yml with the list of all available Perl versions:

    language: perl

    install: 'echo "Nothing to install"'

    script: prove -v t

    perl:
      - "5.8"
      - "5.10"
      - "5.12"
      - "5.14"
      - "5.16"
      - "5.18"
      - "5.20"
      - "5.22"
      - "5.24"

And this is a gorgeous list. Perl 5.8 was released in year 2002. Travis CI supports
version of programming language that is 15 years old. Perl 5.24 is the latest version and
Travis CI supports it. There is no versions 5.9, 5.11 and other odd version numbers. This
is ok, in the Perl world odd version numbers are the developers releases.

In [Travis CI documentation](https://docs.travis-ci.com/user/languages/perl/) it is written
that the exact Perl version can change over time:

> As time goes, new releases come out and we upgrade both Perlbrew and Perls,
> aliases like 5.14 will float and point to different exact versions, patch
> levels and so on.

Nevertheless, I've written the current list of versions:

 * 5.8.9
 * 5.10.1
 * 5.12.5
 * 5.14.4
 * 5.16.3
 * 5.18.2
 * 5.20.0
 * 5.22.0
 * 5.24.0

There is an interesting "feature" in Travis CI (actually it is a bug). Travis CI
does not validate version for correctness. [I've written .travis.yml](https://github.com/bessarabov/perl_versions_travis_ci/blob/202f7a15e384d9a576ae9ba562003d93d3206aba/.travis.yml)
where I have specified non existing version "5.26" (this version will appear
in the future, but now it does not exist). I have also specified absolutely
impossible versions like "-1.10" и "asdf". Travis CI thinks that these numbers
are correct and it passes them to Perlbrew.
[Perlbrew silently says that there is no such version](https://travis-ci.org/bessarabov/perl_versions_travis_ci/jobs/207643158#L132),
but the build continues and the system uses Perl default version 5.14.2.
Such behaviour is completely wrong. System must end such build with status "errored".

I've tried to specify string "123; ls; who" as a version number, such build has
finished with "errored" status, but the build has fallen not on string validation,
but on [string usage](https://travis-ci.org/bessarabov/perl_versions_travis_ci/jobs/207643160).

Any system must validate user input. Travis CI does not do it and it is a bug.

![Tests pass results in Travis CI](https://upload.bessarabov.ru/bessarabov/F4Jz87SOMaPYZU0-tmSu_9HnS8k.png)

I've found one more strange thing while I was experimenting with Travis CI.
I was sure that there is one prepared snapshot for any language that Travis is using
for running tests. It turned out that there are several snapshots for one language.
For example where I run tests on 5.22 [there is no version 5.24 in Perlbrew](https://travis-ci.org/bessarabov/perl_versions_travis_ci/jobs/207655484#L182),
and when I run tests on 5.24 [there is no version 5.22 in Perlbrew](https://travis-ci.org/bessarabov/perl_versions_travis_ci/jobs/207655485#L182).

It seems that when you specify language: perl in .travis.yml and do not specify
any perl versions the build is run in some other environment. So for myself I've
decided that if I need to run tests only for one Perl version, I will explicitly
specify the latest perl version available in Travis CI.

All my experiments live in several different branches in GitHub repository [bessarabov/perl_versions_travis_ci](https://github.com/bessarabov/perl_versions_travis_ci).
And here is a [link with Travis CI build results of this repository](https://travis-ci.org/bessarabov/perl_versions_travis_ci).

Despite this strange setup and validation bug, Travis CI is a superb system and they do
a great thing with free running tests for open source projects.
