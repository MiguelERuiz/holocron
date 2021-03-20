-module(characters_handler).
-behavior(cowboy_handler).

% API Cowboy callbacks.
-export([init/2]).
-export([content_types_provided/2]).
-export([to_json/2]).

init(Req0, State) -> {cowboy_rest, Req0, State}.

content_types_provided(Req, State) ->
  {[
    {<<"application/json">>, to_json}
  ], Req, State}.

to_json(Req, State) ->
  {ok, Connection} = epgsql:connect(#{
    host => "localhost",
    username => "postgres",
    password => "admin",
    database => "postgres",
    timeout => 4000
  }),
  {ok, _Columns, Rows} = epgsql:equery(Connection, "select * from holocron.characters", []),
  ok = epgsql:close(Connection),
  {Rows, Req, State}.
