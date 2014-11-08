-modeule(trace_test).
-export([test1/0]).
test1() ->
	dbg:tracer(),
	dbg:tpl(tracer_test,fib,'_',
		dbg:fun2ms(fun(_) -> return_trace() end)),
	dbg:p(all,[c]),
	tracer_test:fib(4).
