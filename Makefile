now := $(shell date)

auto_commit:
	git add .	
	git commit -am "$(now)"
	git pull
	git push

commit_all: auto_commit release

release:
	hugo -D
	cd public && make


update_theme:
	git submodule update --remote --rebase
	# git submodule update --remote themes/axiom

run:
	 hugo server -D