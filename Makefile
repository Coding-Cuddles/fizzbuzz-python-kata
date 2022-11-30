.PHONY: run
run:
	@./fizzbuzz.py

.PHONY: test
test:
	@pytest test_*.py
