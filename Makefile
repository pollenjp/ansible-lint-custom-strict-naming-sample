
.PHONY: lint
lint:
	rye run ansible-lint -vvv

.PHONY: lint-clean
lint-clean:
	${MAKE} -C "../ansible-lint-custom-strict-naming" build
	rm -rf .venv
	rye sync
	rye run ansible-lint -vvv

.PHONY: clean-install
clean-install:
	${MAKE} -C "../ansible-lint-custom-strict-naming" build
	rm -rf .venv
	rye sync
