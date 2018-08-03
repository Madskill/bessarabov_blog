# First version of PHP was not written in Perl

```
{
    "date_time_msk" : "2018-08-04 02:49:20"
}
```

There is an opinion that several first versions of PHP programming language
were written in Perl language.

Sometimes even some clever people state it as a fact.

I've heard this statement several times and I was sure that it is true.
Well, it looks like it can be true. I'm writing a lot of Perl, so I was
pleased to think that Perl was used to create PHP.

On May 16 2015 on YAPC::Russia conference Ivan Serezhkin was showing his presentation
"[Perl long history](http://event.yapcrussia.org/yr2015/talk/323)". And he has
mention that PHP has never been written in Perl and PHP was written in C from
the very beginning.

So, I've decided to check it.

[Wikipedia states](https://en.wikipedia.org/wiki/PHP#History) that PHP
was written in 1994 with C programming language. The 1.0 version has arrived at 1995
and then the language was called "Personal Home Page/Forms Interpreter" or PHP/FI.

PHP source code is [hosted on GitHub](https://github.com/php/php-src) but it contains
only changes from 1999. On PHP site there is a page [Unsupported Historical Releases](https://php.net/releases/)
but the first version on this page is 3.0.x.

It wasn't easy, but at last I've found the source code of PHP version 1.0:
[http://museum.php.net/php1/php-108.tar.gz](http://museum.php.net/php1/php-108.tar.gz).
To make it more convinient I've put that files [on GitHub](https://github.com/bessarabov/php1).

Here is a perl oneliner to count the number of different kind of files in the
PHP first version source coude:

    $ ls -1 | perl -nalE '/(\..*?)$/; say $1' | sort | uniq -c | sort -r
    9 .c
    6 .h
    3

As you can see there is no Perl in PHP version 1. The very first PHP version
was written in C from the very beginning. And the story that first version of PHP was
written in Perl is just a myth.
