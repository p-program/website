now := $(shell date)

auto_commit:
	git add .	
	git commit -am "$(now)"
	git pull
	git push


update_theme:
	git submodule update --remote --rebase
	# git submodule update --remote themes/axiom

run:
	 hugo server -D