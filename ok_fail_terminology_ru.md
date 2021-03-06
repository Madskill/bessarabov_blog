# Консистентность в словах 'ok'-'fail'

```
{
    "date_time_msk" : "2014-07-08 19:38:35"
}
```

Часто в Perl и JavaScriopt коде, в документации, в интерфейсе, в json,
в именах css классов и в базе данных я использую слова типа 'success'-'fail',
'ok'-'not ok', 'success'-'error', 'success'-'failure'.

Оказывается, у меня нет системы в том как я использую эти слова — где-то
в одном месте коду у меня 'fail', а где-то 'failure'.

Мне хочется добавить порядка, поэтому я выбрал 2 слова, которые я буду
использовать. Это слова:

 * ok
 * fail

Проверка что эти слова подходят:

css:

    .status_ok {
        color: green;
    }

    .status_fail {
        color: red;
    }

Интерфейс:

    Jenkins build 361: ok
    Jenkins build 362: fail

JSON:

    {
        "status" : "ok",
        "data" : {}
    }

Но, кажется, что в случае JSON лучше писать:

    {
        "success" : true,
        "data" : {}
    }

Perl:

    my $data_ok = true;

Но, кажется, что луше писать:

    my $is_data_valid = true;

Вообщем, идеальное решение я не нашел, где-то лучше не использовать
'ok'-'fail', но где возможно я буду стараться использовать 'ok'-'fail'.
