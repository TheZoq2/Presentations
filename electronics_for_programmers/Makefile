all:
	stack exec -- slip-exe > output.md
	cleaver output.md
	cp output-cleaver.html hello_physical_world.html

watch:
	echo slip_input.md | entr make
