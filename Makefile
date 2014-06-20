build: 
	@rvm use 2.0
	@jekyll serve --watch

copy:
	@mkdir ../adam-seed-copy
	@cp -r ./* ../adam-seed-copy/

setup:
	@bundle install
