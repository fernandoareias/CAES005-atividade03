-module(accumulate).
-export([accumulate/2]).

%%
%% Given a fun and a list, apply fun to each list item replacing list item with fun's return value.
%%

accumulate(_Fn, []) ->
    [];
accumulate(Fn, List) ->
    [Fn(X) || X <- List].
