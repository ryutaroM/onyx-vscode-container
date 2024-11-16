.PHONY: init rel-shell
init:
	touch .env
	echo "CURRENT=$$(basename `pwd`)" > .env

rel-shell:
	 exec $$SHELL
