srcfiles := $(shell find "src/" -iname "*.sh" -type f)

.PHONY: all
all: dist/ntenvs

.PHONY: ci
ci: lint all test

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
lint: vendor/shellcheck
	@echo "Linting.."
	$< -s sh src/**/*.sh
	$< -s sh test/**/*.sh

.PHONY: test
test: vendor/urchin
	@echo "Testing.."
	$< -s sh -b -p -f -vv "test/${TEST_TARGET}"

dist/ntenvs: $(srcfiles)
	@echo "Building.."
	@mkdir -p dist/
	@cat src/before $^ src/after > $@
	@chmod +x $@

vendor/shellcheck:
	@echo "Downloading shellcheck.."
	@wget -c 'https://goo.gl/ZzKHFv' -O - | tar -xvJ -C /tmp/
	@mkdir -p vendor/
	@cp /tmp/shellcheck-latest/shellcheck $@
	@chmod +x $@
	@echo "Done!"

vendor/urchin:
	@echo "Downloading urchin.."
	@mkdir -p vendor/
	@wget -c 'https://goo.gl/kFmJ6t' -O $@
	@chmod +x $@
	@echo "Done!"
