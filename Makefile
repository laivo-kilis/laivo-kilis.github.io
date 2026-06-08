# Local preview for the Jekyll site.
# Uses the Homebrew Ruby (system Ruby 2.6 is too old for Jekyll 4).

RUBY_BIN := /opt/homebrew/opt/ruby/bin
BUNDLE   := $(RUBY_BIN)/bundle
export PATH := $(RUBY_BIN):$(PATH)

HOST := 127.0.0.1
PORT := 4000

.PHONY: up down

up:
	@$(BUNDLE) exec jekyll serve --detach --host $(HOST) --port $(PORT)
	@echo ""
	@echo '┌──────────────────────┬─────────────────────────────────┐'
	@echo '│         Page         │               URL               │'
	@echo '├──────────────────────┼─────────────────────────────────┤'
	@echo '│ Home (LT)            │ http://127.0.0.1:4000/          │'
	@echo '├──────────────────────┼─────────────────────────────────┤'
	@echo '│ Home (EN)            │ http://127.0.0.1:4000/en/       │'
	@echo '├──────────────────────┼─────────────────────────────────┤'
	@echo '│ Taisyklės ir sąlygos │ http://127.0.0.1:4000/salygos/  │'
	@echo '├──────────────────────┼─────────────────────────────────┤'
	@echo '│ Sutartis (contract)  │ http://127.0.0.1:4000/sutartis/ │'
	@echo '└──────────────────────┴─────────────────────────────────┘'
	@echo ''
	@echo 'Run "make down" to stop the server.'

down:
	@pids=$$(lsof -ti tcp:$(PORT) 2>/dev/null); \
	if [ -n "$$pids" ]; then \
		kill $$pids && echo "Stopped Jekyll server on port $(PORT)."; \
	else \
		echo "No server running on port $(PORT)."; \
	fi
