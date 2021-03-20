-module(router).
-export([dispatch/0]).

-spec dispatch() -> cowboy_router:dispatch_rules().
dispatch() ->
  cowboy_router:compile(routes()).

-spec routes() -> cowboy_router:routes().
routes() ->
  [{'_', [
      {"/characters", characters_handler, []}
    ]
  }].