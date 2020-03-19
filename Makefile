now := $(shell date)

auto_commit:
	git add .		
	git pull
	# sub module
	hugo -D
	cd public && make
	git commit -am "$(now)"	
	git push

release:
	hugo -D
	cd public && make


update_theme:
	git submodule update --remote --rebase
	# git submodule update --remote themes/axiom

run:
	 hugo server -D