%% @author {{author}}
%% @copyright {{appid}} {{author}}

%% @doc Callbacks for the {{appid}} application.

-module({{appid}}.app).
-author("{{author}}").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for {{appid}}.
start(_Type, _StartArgs) ->
    {{appid}}.deps:ensure(),
    {{appid}}.sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for {{appid}}.
stop(_State) ->
    ok.
