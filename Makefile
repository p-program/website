now := $(shell date)

auto_commit: pull
	git add .	
	# sub module
	hugo -D
	cd public && make auto_commit
	git commit -am "$(now)"	
	git push

clean:
	git rm -r --cached .
	git add .
	git commit -am "clean"
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
	cd themes/axiom && git pull origin master
	# git submodule update --remote --rebase
	# git submodule update --remote themes/axiom

run:
	hugo -D
	hugo server -D