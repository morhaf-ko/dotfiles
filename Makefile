PACKAGES := $(shell ls -d */ 2>/dev/null | sed 's/\/$$//')

all:
	@for pkg in $(PACKAGES); do \
		echo "Stowing $$pkg"; \
		stow --target=$(HOME) $$pkg; \
	done
