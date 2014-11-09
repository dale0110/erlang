-module(clock).
-export([start/2,stop/0,test/0]).



start(Time,Fun)->
	register(clock,spawn(fun()->tick(Time,Fun) end)).

stop()->clock!stop.

tick(Time,Fun)->
	receive
		stop->
			void
		after Time->
			Fun(),
			tick(Time,Fun)
		end.

%%首先在shell中运行clock:test().启动进程，然后会定时打印消息，如果要结束，在shell中输入clock:stop（）
test()->
	clock:start(5000,fun()->io:format("TICK ~p ~n",[erlang:now()]) end).
