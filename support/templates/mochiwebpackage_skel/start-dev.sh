#!/bin/bash
# NOTE: mustache templates need \\ because they are not awesome.
APP={{appid}}
exec erl -pa ebin edit deps/*/ebin -boot start_sasl \\
    -sname ${APP//./_}_dev \\
    -s {{appid}}.main start \\
    -s reloader
