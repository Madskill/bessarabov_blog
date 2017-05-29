# В чем разница между ADD и COPY в Dockerfile?

```
{
    "date_time_msk" : "2017-05-30 00:38:10"
}
```

В Dockerfile можно использовать инструкции ADD и COPY для того чтобы добавлять
файлы в docker образ. А в чем разница между ними?

Короткий ответ: если сомневаетесь что использовать — используйте COPY.

ADD и COPY работают очень похоже, есть 2 отличия.

## ADD умеет скачивать файлы

Вот пример Dockerfile из двух строчек:

    FROM ubuntu:14.04.5
    ADD https://github.com/bessarabov/Moment/archive/1.3.1.tar.gz /app/

Если собрать образ из этого Dockerfile и запустить контейнер, то окажется
что команда ADD выкачала этот архив:

    $ docker build --no-cache --tag tmp .
    Sending build context to Docker daemon 19.97 kB
    Step 1 : FROM ubuntu:14.04.5
     ---> b969ab9f929b
    Step 2 : ADD https://github.com/bessarabov/Moment/archive/1.3.1.tar.gz /app/
    Downloading    15 kB/15 kB
     ---> db999b6d0183
    Removing intermediate container d1412d164f8f
    Successfully built db999b6d0183
    $ docker run -it --rm tmp bash
    root@a3441035ed12:/# find /app
    /app
    /app/1.3.1.tar.gz
    root@a3441035ed12:/# file /app/1.3.1.tar.gz
    /app/1.3.1.tar.gz: gzip compressed data, from Unix
    root@a3441035ed12:/#

Если написать точно такой же Dockerfile, но использовать COPY, то сборка
образа завершится ошибкой:

    $ docker build --tag tmp .
    Sending build context to Docker daemon 19.97 kB
    Step 1 : FROM ubuntu:14.04.5
     ---> b969ab9f929b
    Step 2 : COPY https://github.com/bessarabov/Moment/archive/1.3.1.tar.gz /app/
    Source can't be a URL for COPY
    $

## ADD умеет разворачивать архивы

Вот Dockerfile. В той же папке где лежит Dockerfile лежит еще и файл с архивом.

    FROM ubuntu:14.04.5
    ADD 1.3.1.tar.gz /app/

Если собрать образ и запустить контейнер из этого образа то будет видно что
ADD разархивировал этот tar.gz файл:

    $ docker build --no-cache --tag tmp .
    Sending build context to Docker daemon 43.01 kB
    Step 1 : FROM ubuntu:14.04.5
     ---> b969ab9f929b
    Step 2 : ADD 1.3.1.tar.gz /app/
     ---> d40e091b4c11
    Removing intermediate container 0a9bb54fa04c
    Successfully built d40e091b4c11
    $ docker run --rm -it tmp bash
    root@10048b83e171:/# find /app
    /app
    /app/Moment-1.3.1
    /app/Moment-1.3.1/xt
    /app/Moment-1.3.1/xt/now.t
    /app/Moment-1.3.1/README.md
    /app/Moment-1.3.1/lib
    /app/Moment-1.3.1/lib/Moment.pm
    /app/Moment-1.3.1/Changes
    /app/Moment-1.3.1/t
    /app/Moment-1.3.1/t/constructor.t
    /app/Moment-1.3.1/.travis.yml
    ...
    root@10048b83e171:/#

Если же использовать точно такой же Dockerfile, но использовать инструкцию COPY,
то это просто добавит архив в образ:

    $ docker build --no-cache --tag tmp .
    Sending build context to Docker daemon 43.01 kB
    Step 1 : FROM ubuntu:14.04.5
     ---> b969ab9f929b
    Step 2 : COPY 1.3.1.tar.gz /app/
     ---> 7ecbe1ae0224
    Removing intermediate container 79acec73a994
    Successfully built 7ecbe1ae0224
    $ docker run --rm -it tmp bash
    root@49cff8ff83f7:/# find /app
    /app
    /app/1.3.1.tar.gz
    root@49cff8ff83f7:/#

ADD умеет разархивировать не все виды архивы (например, zip не умеет). И из вывода
сборки образа совершенно не понятно что произошло разворачивание архива.

Инструкция ADD разархивирует файл только если архив находится в одной папке с Dockerfile.
Если ADD скачивает файл, то разархивирования не будет.

Фича инструкции ADD по разархивированию архивов используется для создания
[alpine образов](https://github.com/gliderlabs/docker-alpine/blob/051bef46b2330270069c6e057e7498cdc9b840aa/versions/library-3.6/Dockerfile).
