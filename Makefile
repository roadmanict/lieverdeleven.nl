.PHONY: update-submodules publish

update-submodules:
	git submodule update --remote --merge

publish:
	rm -rf ./public/
	hugo --minify
	aws s3 sync ./public s3://lieverdeleven-nl
