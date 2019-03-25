all:
	stack exec -- slip-exe > output.md
	cleaver output.md

watch:
	echo slip_input.md | entr make
