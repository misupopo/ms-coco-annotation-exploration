
# make docker-exec name="mscoco"
docker-exec: ## dockerに入る
	docker exec -it $$(docker ps | grep -E ' $(name)$$' | awk '{print $$1}') /bin/bash

execute: ## ms coco datasetを使用する
	python3 explore_coco.py

get-coco-json: ## cocoの分析に必要なjsonを取得する
	wget -c http://images.cocodataset.org/annotations/annotations_trainval2017.zip
	unzip -o annotations_trainval2017.zip

# Self-Documented Makefile
# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
