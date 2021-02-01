REPO ?= custom
PACKAGES = $(wildcard */)

.PHONY: all $(PACKAGES)

all: $(PACKAGES)

$(PACKAGES):
	cd $@ && aur build -d $(REPO) --chroot --sign --clean --syncdeps
