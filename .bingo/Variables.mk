# Auto generated binary variables helper managed by https://github.com/bwplotka/bingo v0.4.0. DO NOT EDIT.
# All tools are designed to be build inside $GOBIN.
BINGO_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
GOPATH ?= $(shell go env GOPATH)
GOBIN  ?= $(firstword $(subst :, ,${GOPATH}))/bin
GO     ?= $(shell which go)

# Below generated variables ensure that every time a tool under each variable is invoked, the correct version
# will be used; reinstalling only if needed.
# For example for bingo variable:
#
# In your main Makefile (for non array binaries):
#
#include .bingo/Variables.mk # Assuming -dir was set to .bingo .
#
#command: $(BINGO)
#	@echo "Running bingo"
#	@$(BINGO) <flags/args..>
#
BINGO := $(GOBIN)/bingo-v0.2.3
$(BINGO): $(BINGO_DIR)/bingo.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/bingo-v0.2.3"
	@cd $(BINGO_DIR) && $(GO) build -mod=mod -modfile=bingo.mod -o=$(GOBIN)/bingo-v0.2.3 "github.com/bwplotka/bingo"

CALENS := $(GOBIN)/calens-v0.2.0
$(CALENS): $(BINGO_DIR)/calens.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/calens-v0.2.0"
	@cd $(BINGO_DIR) && $(GO) build -mod=mod -modfile=calens.mod -o=$(GOBIN)/calens-v0.2.0 "github.com/restic/calens"

GOLINT := $(GOBIN)/golint-v0.0.0-20200302205851-738671d3881b
$(GOLINT): $(BINGO_DIR)/golint.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/golint-v0.0.0-20200302205851-738671d3881b"
	@cd $(BINGO_DIR) && $(GO) build -mod=mod -modfile=golint.mod -o=$(GOBIN)/golint-v0.0.0-20200302205851-738671d3881b "golang.org/x/lint/golint"

REFLEX := $(GOBIN)/reflex-v0.3.0
$(REFLEX): $(BINGO_DIR)/reflex.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/reflex-v0.3.0"
	@cd $(BINGO_DIR) && $(GO) build -mod=mod -modfile=reflex.mod -o=$(GOBIN)/reflex-v0.3.0 "github.com/cespare/reflex"

STATICCHECK := $(GOBIN)/staticcheck-v0.0.1-2020.1.6
$(STATICCHECK): $(BINGO_DIR)/staticcheck.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/staticcheck-v0.0.1-2020.1.6"
	@cd $(BINGO_DIR) && $(GO) build -mod=mod -modfile=staticcheck.mod -o=$(GOBIN)/staticcheck-v0.0.1-2020.1.6 "honnef.co/go/tools/cmd/staticcheck"

