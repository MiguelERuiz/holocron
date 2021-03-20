%%%-------------------------------------------------------------------
%% @doc holocron public API
%% @end
%%%-------------------------------------------------------------------

-module(holocron_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _Args) ->
  Dispatch = router:dispatch(),
  {ok, _} = cowboy:start_clear(my_http_listener,
    [{port, 8080}],
    #{env => #{dispatch => Dispatch}}),
  holocron_sup:start_link().

stop(_State) ->
  ok.

%% internal functions
