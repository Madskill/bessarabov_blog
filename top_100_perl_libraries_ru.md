# 100 самых популярных Perl библиотек

```
{
    "date_time_msk" : "2016-06-27 13:46:48"
}
```

В мире языка программирования Perl есть замечательная штуковина — CPAN
(это можно произносить как угодно, я предпочитаю говорить "си-пан").

CPAN — это хранилище Perl библиотек. Кто угодно может написать Perl
библиотеку, загрузить ее на CPAN, а потом остальные люди смогут
взять эту библиотеку и использовать ее в своем проекте.

К этому хранилищу есть несколько разных веб интерфейсов — все они работают
с одним и тем же хранилищем CPAN, но показывают его данные немного по разному.
Я предпочитаю использовать [https://metacpan.org](https://metacpan.org).

На Metacpan есть возможность голосовать за библиотеки. Если на странице
библиотеки кликнуть на символ ++ то система поймет что ты проголосовал
за эту библиотеку (поставил ей лайк):

![How to like on metacpan](https://upload.bessarabov.ru/bessarabov/WalWxJqu5XTW88UgA9jpBcfBHNc.png)

На самом metacpan нет рейтинга библиотек, но у metacpan есть API с помощью
которого достаточно просто получить топ библиотек по количеству лайков.

Я написал [простой скрипт](https://gist.github.com/bessarabov/a280c78781b8e8b0db2bfd3e96d13944),
который выводит топ 100 Perl библиотек с наибольшим количеством лайков.
Сам язык Perl лишь на втором месте, а самая популярная
библиотека — это штука для создания веб проектов
[Mojolicious](https://metacpan.org/release/Mojolicious).

Все хорошие Perl программисты должны знать про популярные библиотеки. Не
обязательно во всех деталях знать их все (да и вряд ли это возможно), но
совершенно обязательно знать про каждую популярную библиотеку что она делает,
какие задачи решает и в каких случаях стоит ее использовать.

Итак, вот список на 2017-05-28 (число после тире — это количество лайков
этой библиотеки):

 1. [Mojolicious](https://metacpan.org/release/Mojolicious) — 332
 2. [perl](https://metacpan.org/release/perl) — 287
 3. [Moose](https://metacpan.org/release/Moose) — 257
 4. [DBIx-Class](https://metacpan.org/release/DBIx-Class) — 242
 5. [Moo](https://metacpan.org/release/Moo) — 215
 6. [App-cpanminus](https://metacpan.org/release/App-cpanminus) — 214
 7. [DBI](https://metacpan.org/release/DBI) — 200
 8. [Plack](https://metacpan.org/release/Plack) — 191
 9. [DateTime](https://metacpan.org/release/DateTime) — 163
 10. [Dist-Zilla](https://metacpan.org/release/Dist-Zilla) — 151
 11. [App-perlbrew](https://metacpan.org/release/App-perlbrew) — 142
 12. [Dancer](https://metacpan.org/release/Dancer) — 139
 13. [Test-Simple](https://metacpan.org/release/Test-Simple) — 138
 14. [Try-Tiny](https://metacpan.org/release/Try-Tiny) — 137
 15. [Devel-NYTProf](https://metacpan.org/release/Devel-NYTProf) — 135
 16. [Catalyst-Runtime](https://metacpan.org/release/Catalyst-Runtime) — 129
 17. [libwww-perl](https://metacpan.org/release/libwww-perl) — 126
 18. [Scalar-List-Utils](https://metacpan.org/release/Scalar-List-Utils) — 122
 19. [Path-Tiny](https://metacpan.org/release/Path-Tiny) — 113
 20. [AnyEvent](https://metacpan.org/release/AnyEvent) — 113
 21. [Data-Printer](https://metacpan.org/release/Data-Printer) — 107
 22. [Template-Toolkit](https://metacpan.org/release/Template-Toolkit) — 103
 23. [ack](https://metacpan.org/release/ack) — 99
 24. [List-MoreUtils](https://metacpan.org/release/List-MoreUtils) — 97
 25. [Type-Tiny](https://metacpan.org/release/Type-Tiny) — 87
 26. [Perl-Tidy](https://metacpan.org/release/Perl-Tidy) — 86
 27. [JSON-XS](https://metacpan.org/release/JSON-XS) — 86
 28. [Starman](https://metacpan.org/release/Starman) — 85
 29. [Dancer2](https://metacpan.org/release/Dancer2) — 82
 30. [HTTP-Tiny](https://metacpan.org/release/HTTP-Tiny) — 81
 31. [Devel-Cover](https://metacpan.org/release/Devel-Cover) — 79
 32. [URI](https://metacpan.org/release/URI) — 78
 33. [Getopt-Long](https://metacpan.org/release/Getopt-Long) — 78
 34. [Perl-Critic](https://metacpan.org/release/Perl-Critic) — 77
 35. [Path-Class](https://metacpan.org/release/Path-Class) — 75
 36. [MongoDB](https://metacpan.org/release/MongoDB) — 74
 37. [Data-Dumper](https://metacpan.org/release/Data-Dumper) — 74
 38. [Capture-Tiny](https://metacpan.org/release/Capture-Tiny) — 74
 39. [JSON](https://metacpan.org/release/JSON) — 72
 40. [XML-LibXML](https://metacpan.org/release/XML-LibXML) — 70
 41. [WWW-Mechanize](https://metacpan.org/release/WWW-Mechanize) — 69
 42. [Task-Kensho](https://metacpan.org/release/Task-Kensho) — 69
 43. [Carton](https://metacpan.org/release/Carton) — 69
 44. [Text-CSV_XS](https://metacpan.org/release/Text-CSV_XS) — 64
 45. [DBD-SQLite](https://metacpan.org/release/DBD-SQLite) — 64
 46. [local-lib](https://metacpan.org/release/local-lib) — 62
 47. [Time-Moment](https://metacpan.org/release/Time-Moment) — 58
 48. [SQL-Abstract](https://metacpan.org/release/SQL-Abstract) — 54
 49. [Log-Log4perl](https://metacpan.org/release/Log-Log4perl) — 52
 50. [Parallel-ForkManager](https://metacpan.org/release/Parallel-ForkManager) — 51
 51. [MCE](https://metacpan.org/release/MCE) — 50
 52. [Text-Xslate](https://metacpan.org/release/Text-Xslate) — 48
 53. [IO-All](https://metacpan.org/release/IO-All) — 48
 54. [PathTools](https://metacpan.org/release/PathTools) — 47
 55. [Imager](https://metacpan.org/release/Imager) — 47
 56. [File-Slurp](https://metacpan.org/release/File-Slurp) — 47
 57. [autodie](https://metacpan.org/release/autodie) — 45
 58. [Reply](https://metacpan.org/release/Reply) — 44
 59. [Ubic](https://metacpan.org/release/Ubic) — 43
 60. [HTTP-Message](https://metacpan.org/release/HTTP-Message) — 43
 61. [DBD-Pg](https://metacpan.org/release/DBD-Pg) — 43
 62. [YAML](https://metacpan.org/release/YAML) — 42
 63. [Rex](https://metacpan.org/release/Rex) — 41
 64. [Pinto](https://metacpan.org/release/Pinto) — 40
 65. [Text-CSV](https://metacpan.org/release/Text-CSV) — 38
 66. [Devel-REPL](https://metacpan.org/release/Devel-REPL) — 36
 67. [Carp](https://metacpan.org/release/Carp) — 36
 68. [XML-Twig](https://metacpan.org/release/XML-Twig) — 35
 69. [Time-HiRes](https://metacpan.org/release/Time-HiRes) — 35
 70. [Minion](https://metacpan.org/release/Minion) — 35
 71. [File-Temp](https://metacpan.org/release/File-Temp) — 35
 72. [Devel-hdb](https://metacpan.org/release/Devel-hdb) — 34
 73. [Test-Harness](https://metacpan.org/release/Test-Harness) — 33
 74. [Mouse](https://metacpan.org/release/Mouse) — 31
 75. [Catalyst-Manual](https://metacpan.org/release/Catalyst-Manual) — 31
 76. [Term-ANSIColor](https://metacpan.org/release/Term-ANSIColor) — 30
 77. [PPI](https://metacpan.org/release/PPI) — 30
 78. [Moops](https://metacpan.org/release/Moops) — 30
 79. [Coro](https://metacpan.org/release/Coro) — 30
 80. [Role-Tiny](https://metacpan.org/release/Role-Tiny) — 28
 81. [PSGI](https://metacpan.org/release/PSGI) — 28
 82. [Log-Any](https://metacpan.org/release/Log-Any) — 28
 83. [Daemon-Control](https://metacpan.org/release/Daemon-Control) — 28
 84. [DBIx-Class-Schema-Loader](https://metacpan.org/release/DBIx-Class-Schema-Loader) — 28
 85. [CHI](https://metacpan.org/release/CHI) — 28
 86. [Regexp-Common](https://metacpan.org/release/Regexp-Common) — 27
 87. [IO](https://metacpan.org/release/IO) — 27
 88. [Test-Fatal](https://metacpan.org/release/Test-Fatal) — 26
 89. [Test-Deep](https://metacpan.org/release/Test-Deep) — 26
 90. [Redis](https://metacpan.org/release/Redis) — 26
 91. [Mojo-Pg](https://metacpan.org/release/Mojo-Pg) — 25
 92. [DBD-mysql](https://metacpan.org/release/DBD-mysql) — 25
 93. [Marpa-R2](https://metacpan.org/release/Marpa-R2) — 24
 94. [Regexp-Debugger](https://metacpan.org/release/Regexp-Debugger) — 23
 95. [Mango](https://metacpan.org/release/Mango) — 23
 96. [DBIx-Class-Helpers](https://metacpan.org/release/DBIx-Class-Helpers) — 23
 97. [POE](https://metacpan.org/release/POE) — 21
 98. [Time-Piece](https://metacpan.org/release/Time-Piece) — 20
 99. [Sereal](https://metacpan.org/release/Sereal) — 20
 100. [Furl](https://metacpan.org/release/Furl) — 20
