# What is the difference between ADD and COPY in Dockerfile?

```
{
    "date_time_msk" : "2017-05-30 23:17:41"
}
```

In Dockerfile instructions ADD and COPY can be used to add files to docker image.
But what is the difference between these instructions?

Short answer: use COPY if you uncertain what to use.

ADD and COPY works in a very similar way, but there are 2 differences.

## ADD can download files

Here is a two-line Dockerfile:

    FROM ubuntu:14.04.5
    ADD https://github.com/bessarabov/Moment/archive/1.3.1.tar.gz /app/

If you build image from this Dockerfile and run container from it then you'll
find out that the ADD instruction has downloaded the archive file:

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

In the case of the same Dockerfile but with COPY instruction the build will fail:

    $ docker build --tag tmp .
    Sending build context to Docker daemon 19.97 kB
    Step 1 : FROM ubuntu:14.04.5
     ---> b969ab9f929b
    Step 2 : COPY https://github.com/bessarabov/Moment/archive/1.3.1.tar.gz /app/
    Source can't be a URL for COPY
    $

## ADD can decompress archives

Here is a Dockerfile. In the same folder with the Dockerfile there is an archive file.

    FROM ubuntu:14.04.5
    ADD 1.3.1.tar.gz /app/

If you build image and run container from this image you'll that ADD has decompressed
tag.gz file:

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

In case of the same Dockerfile, but with COPY instruction, it will only add this
archive file to the image:

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

ADD can decompress not all kind of archives. For example, it can't work with zip files.
From the docker build output it is impossible to find out that there was a decompression
process.

ADD instruction decompress file only if the archive is situated in the same folder
with Dockerfile. In case ADD downloads file it will not be decompressed.

Decompress feature of the ADD instruction is used for the
[alpine images](https://github.com/gliderlabs/docker-alpine/blob/051bef46b2330270069c6e057e7498cdc9b840aa/versions/library-3.6/Dockerfile).
