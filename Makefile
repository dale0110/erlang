.SUFFIXES: .erl .beam
.erl.beam:
	erlc -W $<

ERL = erl -boot start_clean

MODS = chatroom chatroom_sup person

all: compile
	${ERL} -pa 'C:\Program Files\erl5.10.2\usr\chatroom' -s chatroom chatroom_sup person start

compile: ${MODS:%=%.beam}

clean:
	rm -rf *.beam erl_crash.dump
