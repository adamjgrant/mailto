build: 
	@gulp
	@jekyll serve --watch

copy:
	@mkdir ../adam-seed-copy
	@cp -r ./* ../adam-seed-copy/

setup:
	@bundle install
	@npm install
