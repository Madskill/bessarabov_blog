# JSON pretty print with jq

```
{
    "date_time_msk" : "2018-02-11 22:07:04"
}
```

There is a very popular tool to work with json in command line — jq

With jq it is very easy to convert messy json to json that is easy to read.

Here is an example:

    $ echo '{"a":"a","d":{"e":88},"b":[],"c":false}' | jq .
    {
      "a": "a",
      "d": {
        "e": 88
      },
      "b": [],
      "c": false
    }

It is not visible in the text, but jq uses color to output json. Here is a screenshot:

![Screenshot with jq usage](https://upload.bessarabov.ru/bessarabov/gHj0T6486fGp14ljeQI1IF0zFu8.png)

By default jq output json keys in the same order they were in the original json.
It is often more comfortable to view json with sorted keys. There is an option in jq
that sort keys "--sort-key" (there is also a short version of this option "-S"):

    $ echo '{"a":"a","d":{"e":88},"b":[],"c":false}' | jq -S .
    {
      "a": "a",
      "b": [],
      "c": false,
      "d": {
        "e": 88
      }
    }

In the samples you can see that if there is "-S" option the keys in the output json are sorted: a, b, c, d.
But if the key "-S" is omitted, then the keys are in the same order as they were in the original json: a, d, b, c.

Actually, jq is a very complex thing. You can do a lot of json transformations with it.
Jq get json or several json-s as an input. Then, there is the filter that jq uses to the input,
and then jq output the results. The simplest possible filter is a dot. Filter "dot" does not
change input values. In all the samples in this text dot filter was used.

Actually, if you have jq version 1.5 you can omit the dot in case you passing json to jq input:

    $ echo '{"a":"a","d":{"e":88},"b":[],"c":false}' | jq
    {
      "a": "a",
      "d": {
        "e": 88
      },
      "b": [],
      "c": false
    }

But if you are using more early version you must always specify filter.

If you are not passing data to the input, but specifying file name to jq, you
must specify filter. Here is the working sample:

    $ cat a.json
    {"a":"a","d":{"e":88},"b":[],"c":false}
    $ jq . a.json
    {
      "a": "a",
      "d": {
        "e": 88
      },
      "b": [],
      "c": false
    }

But it you does not specify filter, it will not work:

    $ jq a.json
    jq: error: a/0 is not defined at <top-level>, line 1:
    a.json
    jq: 1 compile error

Here is a sample of a more complex filter. Here is the new json document is created. The
values of the new json document are some values from the original json.

    $ echo '{"a":"a","d":{"e":88},"b":[],"c":false}' | jq '{ aa : .a, bb : .b }'
    {
      "aa": "a",
      "bb": []
    }

(well, actually, jq filters is a big and complex thing, that deserves individual text)

You can install jq on macOS with the command:

    brew install jq

(To make this command work you must install [Homebrew](https://brew.sh/) before.)
