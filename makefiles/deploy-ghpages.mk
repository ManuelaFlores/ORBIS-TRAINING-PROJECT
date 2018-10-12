.PHONY: deploy.ghpages

DEPLOY_DIR = deploy
BUILD_DIR = build
GIT_BRANCH = gh-pages
GIT_PERSONAL_TOKEN = dc72eb7af5956ce82df3d25d9881299ac1a2abf6 
GIT_BRANCH_DIR = $(PWD)/$(DEPLOY_DIR)/$(GIT_BRANCH)

define mkdir_deploy_dir
    @if [ ! -d "$(GIT_BRANCH_DIR)" ]; then mkdir $(GIT_BRANCH_DIR); fi
endef

define git_init
    @cd $(GIT_BRANCH_DIR) && \
     rm -rf $(GIT_BRANCH_DIR)/.git && \
     git init
endef

define git_config
    $(eval GIT_USER_NAME := $(shell git log --pretty=format:"%an" | head -n 1))
    $(eval GIT_USER_EMAIL := $(shell git log --pretty=format:"%ae" | head -n 1))
    @cd $(GIT_BRANCH_DIR) && \
     git config user.email "$(GIT_USER_EMAIL)" && \
     git config user.name "$(GIT_USER_NAME)"
endef

define git_add_remote_repository
    $(eval REPOSITORY := $(shell git remote -v | grep origin | grep '(push)'| awk '{print $$2}'))
    $(eval GIT_REPOSITORY_REMOTE := $(shell echo $(REPOSITORY) | sed 's%https://%https://$(GIT_PERSONAL_TOKEN)@%g'))
    @cd $(GIT_BRANCH_DIR) && \
     git remote add origin $(GIT_REPOSITORY_REMOTE)
endef

define create_branch_gh_pages
    @cd $(GIT_BRANCH_DIR) && \
     git checkout -b $(GIT_BRANCH)
endef

define copy_files_to_deploy
    @cp -r $(PWD)/$(DEPLOY_DIR)/$(BUILD_DIR)/* $(GIT_BRANCH_DIR)
endef

define git_add
    @cd $(GIT_BRANCH_DIR) && \
     git add * && \
     git status
endef

define create_commit
    $(eval MESSAGE := $(shell git log --pretty=format:"%s" | head -n 1))
    @cd $(GIT_BRANCH_DIR) && \
     git commit -m "$(MESSAGE)"
endef


