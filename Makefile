now := $(shell date)

auto_commit: pull
	git add .	
	# sub module
	hugo -D
	cd public && make
	git commit -am "$(now)"	
	git push

release:
	hugo -D
	# sub module
	cd public && make

pull:
	git pull
	# sub module
	cd public && make pull

update_theme:
	git submodule update --remote --rebase
	# git submodule update --remote themes/axiom

run:
	hugo -D
	hugo server -D