# Python oneliner to start webserver

```
{
    "date_time_msk" : "2018-02-18 13:15:00"
}
```

There is a great thing in the Python programming language — the module
that creates web server that serves files from the current directory.
To start it you need to run:

    python -mSimpleHTTPServer 3000

After running this command there will be web server running on [http://127.0.0.1:3000](http://127.0.0.1:3000)
and it will be serving files from the directory where you have run it.

The number 3000 in the command is the port what web server will be running on.
You can omit this number, then the server will be running on 8000 port.

To stop webserver you need to press Ctrl+C on you keyboard.

Python is preinstalled on macOS and many linux distributions so this command
will work on that systems without the need for any additional actions.
