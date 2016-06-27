# 100 самых популярных Perl библиотек

date_time: 2016-06-27 13:46:48 MSK

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

Итак, вот список на 2016-06-27 (число после тире — это количество лайков
этой библиотеки):

 1. [Mojolicious](https://metacpan.org/release/Mojolicious) — 312
 2. [perl](https://metacpan.org/release/perl) — 280
 3. [Moose](https://metacpan.org/release/Moose) — 253
 4. [DBIx-Class](https://metacpan.org/release/DBIx-Class) — 236
 5. [App-cpanminus](https://metacpan.org/release/App-cpanminus) — 211
 6. [Moo](https://metacpan.org/release/Moo) — 209
 7. [DBI](https://metacpan.org/release/DBI) — 197
 8. [Plack](https://metacpan.org/release/Plack) — 188
 9. [DateTime](https://metacpan.org/release/DateTime) — 160
 10. [Dist-Zilla](https://metacpan.org/release/Dist-Zilla) — 146
 11. [App-perlbrew](https://metacpan.org/release/App-perlbrew) — 139
 12. [Dancer](https://metacpan.org/release/Dancer) — 138
 13. [Try-Tiny](https://metacpan.org/release/Try-Tiny) — 135
 14. [Devel-NYTProf](https://metacpan.org/release/Devel-NYTProf) — 132
 15. [Test-Simple](https://metacpan.org/release/Test-Simple) — 130
 16. [Catalyst-Runtime](https://metacpan.org/release/Catalyst-Runtime) — 127
 17. [libwww-perl](https://metacpan.org/release/libwww-perl) — 125
 18. [Scalar-List-Utils](https://metacpan.org/release/Scalar-List-Utils) — 120
 19. [AnyEvent](https://metacpan.org/release/AnyEvent) — 111
 20. [Path-Tiny](https://metacpan.org/release/Path-Tiny) — 107
 21. [Data-Printer](https://metacpan.org/release/Data-Printer) — 103
 22. [Template-Toolkit](https://metacpan.org/release/Template-Toolkit) — 101
 23. [ack](https://metacpan.org/release/ack) — 98
 24. [List-MoreUtils](https://metacpan.org/release/List-MoreUtils) — 97
 25. [Type-Tiny](https://metacpan.org/release/Type-Tiny) — 85
 26. [Perl-Tidy](https://metacpan.org/release/Perl-Tidy) — 85
 27. [Starman](https://metacpan.org/release/Starman) — 84
 28. [JSON-XS](https://metacpan.org/release/JSON-XS) — 82
 29. [URI](https://metacpan.org/release/URI) — 78
 30. [HTTP-Tiny](https://metacpan.org/release/HTTP-Tiny) — 77
 31. [Getopt-Long](https://metacpan.org/release/Getopt-Long) — 76
 32. [Perl-Critic](https://metacpan.org/release/Perl-Critic) — 75
 33. [Path-Class](https://metacpan.org/release/Path-Class) — 75
 34. [Devel-Cover](https://metacpan.org/release/Devel-Cover) — 75
 35. [Data-Dumper](https://metacpan.org/release/Data-Dumper) — 74
 36. [MongoDB](https://metacpan.org/release/MongoDB) — 72
 37. [JSON](https://metacpan.org/release/JSON) — 70
 38. [XML-LibXML](https://metacpan.org/release/XML-LibXML) — 69
 39. [Carton](https://metacpan.org/release/Carton) — 68
 40. [WWW-Mechanize](https://metacpan.org/release/WWW-Mechanize) — 67
 41. [Dancer2](https://metacpan.org/release/Dancer2) — 67
 42. [Capture-Tiny](https://metacpan.org/release/Capture-Tiny) — 67
 43. [Task-Kensho](https://metacpan.org/release/Task-Kensho) — 65
 44. [DBD-SQLite](https://metacpan.org/release/DBD-SQLite) — 63
 45. [Text-CSV_XS](https://metacpan.org/release/Text-CSV_XS) — 62
 46. [local-lib](https://metacpan.org/release/local-lib) — 61
 47. [Time-Moment](https://metacpan.org/release/Time-Moment) — 57
 48. [SQL-Abstract](https://metacpan.org/release/SQL-Abstract) — 54
 49. [autodie](https://metacpan.org/release/autodie) — 52
 50. [Log-Log4perl](https://metacpan.org/release/Log-Log4perl) — 49
 51. [Ubic](https://metacpan.org/release/Ubic) — 48
 52. [Text-Xslate](https://metacpan.org/release/Text-Xslate) — 47
 53. [Pinto](https://metacpan.org/release/Pinto) — 47
 54. [Imager](https://metacpan.org/release/Imager) — 47
 55. [IO-All](https://metacpan.org/release/IO-All) — 47
 56. [File-Slurp](https://metacpan.org/release/File-Slurp) — 47
 57. [PathTools](https://metacpan.org/release/PathTools) — 46
 58. [Reply](https://metacpan.org/release/Reply) — 43
 59. [HTTP-Message](https://metacpan.org/release/HTTP-Message) — 43
 60. [YAML](https://metacpan.org/release/YAML) — 42
 61. [DBD-Pg](https://metacpan.org/release/DBD-Pg) — 42
 62. [XML-Twig](https://metacpan.org/release/XML-Twig) — 41
 63. [Rex](https://metacpan.org/release/Rex) — 40
 64. [Parallel-ForkManager](https://metacpan.org/release/Parallel-ForkManager) — 40
 65. [Devel-REPL](https://metacpan.org/release/Devel-REPL) — 36
 66. [CHI](https://metacpan.org/release/CHI) — 36
 67. [File-Temp](https://metacpan.org/release/File-Temp) — 35
 68. [Carp](https://metacpan.org/release/Carp) — 35
 69. [Time-HiRes](https://metacpan.org/release/Time-HiRes) — 34
 70. [Test-Harness](https://metacpan.org/release/Test-Harness) — 33
 71. [MCE](https://metacpan.org/release/MCE) — 31
 72. [Devel-hdb](https://metacpan.org/release/Devel-hdb) — 31
 73. [Catalyst-Manual](https://metacpan.org/release/Catalyst-Manual) — 31
 74. [Mouse](https://metacpan.org/release/Mouse) — 30
 75. [PPI](https://metacpan.org/release/PPI) — 29
 76. [Coro](https://metacpan.org/release/Coro) — 28
 77. [Regexp-Common](https://metacpan.org/release/Regexp-Common) — 27
 78. [IO](https://metacpan.org/release/IO) — 27
 79. [DBIx-Class-Schema-Loader](https://metacpan.org/release/DBIx-Class-Schema-Loader) — 27
 80. [Test-Fatal](https://metacpan.org/release/Test-Fatal) — 26
 81. [Role-Tiny](https://metacpan.org/release/Role-Tiny) — 26
 82. [Redis](https://metacpan.org/release/Redis) — 26
 83. [PSGI](https://metacpan.org/release/PSGI) — 26
 84. [Minion](https://metacpan.org/release/Minion) — 25
 85. [App-FatPacker](https://metacpan.org/release/App-FatPacker) — 25
 86. [Mojo-Pg](https://metacpan.org/release/Mojo-Pg) — 24
 87. [Marpa-R2](https://metacpan.org/release/Marpa-R2) — 24
 88. [DBD-mysql](https://metacpan.org/release/DBD-mysql) — 24
 89. [Regexp-Debugger](https://metacpan.org/release/Regexp-Debugger) — 23
 90. [Mango](https://metacpan.org/release/Mango) — 23
 91. [DBIx-Class-Helpers](https://metacpan.org/release/DBIx-Class-Helpers) — 23
 92. [Text-CSV](https://metacpan.org/release/Text-CSV) — 22
 93. [Moops](https://metacpan.org/release/Moops) — 22
 94. [Term-ANSIColor](https://metacpan.org/release/Term-ANSIColor) — 21
 95. [POE](https://metacpan.org/release/POE) — 21
 96. [Time-Piece](https://metacpan.org/release/Time-Piece) — 20
 97. [Sereal](https://metacpan.org/release/Sereal) — 20
 98. [Encode](https://metacpan.org/release/Encode) — 20
 99. [Email-Sender](https://metacpan.org/release/Email-Sender) — 20
 100. [Test-Most](https://metacpan.org/release/Test-Most) — 19
