all: compile

compile:
	dune build

run:
	dune exec bin/main.exe
