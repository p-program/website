now := $(shell date)

auto_commit:
	git add .	
	git commit -am "$(now)"
	git pull
	git push


update_theme:
	git submodule update --remote --rebase
