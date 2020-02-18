#!/usr/bin/make
SHELL := /bin/bash

DOTFILES_PATH=$(HOME)/.dotfiles
VUNDLE_PATH=$(wildcard $(DOTFILES_PATH)/vim/bundle)
GIT_FILES=$(wildcard $(DOTFILES_PATH)/git/*)
IRB_FILES=$(wildcard $(DOTFILES_PATH)/irb/*)
RUBY_FILES=$(wildcard $(DOTFILES_PATH)/ruby/*)
CTAGS_FILES=$(wildcard $(DOTFILES_PATH)/ctags/*)
TMUX_FILES=$(wildcard $(DOTFILES_PATH)/tmux/*)
VIMIFY_FILES=$(wildcard $(DOTFILES_PATH)/vimify/*)
VIM_FILES=$(DOTFILES_PATH)/vim
VIM_CONFIG=$(DOTFILES_PATH)/vimrc

.PHONY: help
.DEFAULT_GOAL := help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

install_files:
	@echo "======================================================"
	@echo "Installing symbolic links."
	@echo "======================================================"	
	$(call create_link, $(GIT_FILES))
	$(call create_link, $(IRB_FILES))
	$(call create_link, $(RUBY_FILES))
	$(call create_link, $(CTAGS_FILES))
	$(call create_link, $(TMUX_FILES))
	$(call create_link, $(VIMIFY_FILES))
	@ln -nfs $(VIM_FILES) $(HOME)/.vim
	@ln -nfs $(VIM_CONFIG) $(HOME)/.vimrc	

install_vundle: 
	@echo "======================================================"
	@echo "Installing and updating vundles."
	@echo "======================================================"	
	@cd $(DOTFILES_PATH)
	@git clone https://github.com/VundleVim/Vundle.vim.git $(DOTFILES_PATH)/vim/bundle/vundle
	@vim +PluginInstall +qall

define create_link
	@for f in $(1); do ln -nfs $$f $(HOME)/.$${f##*/}; done
endef

