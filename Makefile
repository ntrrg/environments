srcfiles := $(shell find "src/" -iname "*.sh" -type f)

.PHONY: all
all: dist/ntenvs

.PHONY: ci
ci: vendor/shellcheck lint all vendor/urchin test

.PHONY: clean
clean:
	@echo "Cleanning.."
	rm -r dist/ vendor/

.PHONY: dev
dev:
	@echo
	@echo "Validating code.. (Each 5 seconds)"
	@echo
	@busybox watch -n 5 $(MAKE) -s ci

.PHONY: lint
lint:
	@echo "Linting.."
	vendor/shellcheck -s sh src/**/*.sh
	vendor/shellcheck -s sh test/**/*.sh

.PHONY: test
test:
	@echo "Testing.."
	vendor/urchin -s sh -b -p -vv test/"${TEST_TARGET}"

dist/ntenvs: $(srcfiles)
	@echo "Building.."
	@mkdir -p dist/
	@cat src/before $^ src/after > $@
	@chmod +x $@

vendor/shellcheck:
	@echo "Downloading shellcheck.."
	@wget -c 'https://storage.googleapis.com/shellcheck/shellcheck-latest.linux.x86_64.tar.xz' -O /tmp/shellcheck.tar.xz
	@(cd /tmp && tar -xvf shellcheck.tar.xz)
	@mkdir -p vendor/
	@cp /tmp/shellcheck-latest/shellcheck $@
	@chmod +x $@
	@echo "Done!"

vendor/urchin:
	@echo "Downloading urchin.."
	@mkdir -p vendor/
	@wget -c 'https://raw.githubusercontent.com/tlevine/urchin/v0.1.0-rc3/urchin' -O $@
	@chmod +x $@
	@echo "Done!"
