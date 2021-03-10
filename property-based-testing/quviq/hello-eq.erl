-module(hello_eq).
-include_lib("eqc/include/eqc.hrl").
-compile([export_all]).
% -export([even_nat/0, prop_nat/0]).

even_nat() ->
    ?SUCHTHAT(N, nat(),
        N rem 2 == 0).
prop_nat() ->
    ?FORALL(N, even_nat(),
        N * N >= 0).
