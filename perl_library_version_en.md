# How to find out what version of Perl library is installed

```
{
    "date_time_msk" : "2018-07-08 18:42:29"
}
```

There are a lot of ways to find out what version of Perl library is installed.

## $VERSION variable

The most common way is to output value of the $VERSION variable. Here is an example:

    $ perl -MMojolicious -E 'say $Mojolicious::VERSION'
    7.01

Here we are using Perl oneliner. With the option -M we are importing Perl library Mojolicious,
and then we are executing code that we have passed to the option -E. The code is printing
the value of the $VERSION variable from the package Mojolicious.

This is a simple working solution. It is working out of the box, you don't need to install
anyting in addition to make it work.

But this solution needs a lot of keystrokes. You need to specify the name of the library
twice.

## Using special scripts

There are a lot of scripts on CPAN that are created for solving exactly this problem.
All of them do pretty same job.

 * [pmversion](https://metacpan.org/pod/distribution/App-PMUtils/script/pmversion)
 * [mver](https://metacpan.org/pod/distribution/App-Mver/script/mver)
 * [module-version](https://metacpan.org/pod/module-version)

Is is very convinient that you need to enter just a short commant to find out the
version of the installed library, but to do it you must install some additional things
from the CPAN. Sometimes you need to find out the version of the library on some server
and you don't want to install anyting on it.

## Using hack with version

There is a true genious solution. You neet to write "use LIBRARY_NAME SOME_NUMBER":

    $ perl -e 'use Mojolicious 123'
    Mojolicious version 123 required--this is only version 7.01 at -e line 1.
    BEGIN failed--compilation aborted at -e line 1.

Here we a using a feature of use — you can specify what version of the library you want to import.
We are using some big number for the version and Perl is saying that there is no library with
such version, but it tells us the thing we wanted to know — the version of the currenty installed
library.

This solution is not so convinient as the specialized srcipt, but it works out of the box, so you
don't need to install anyting, and you need to type a lot less than the solution with $VERSION.
