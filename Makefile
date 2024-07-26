BIN_DIR = bin

.PHONY: all build clean test

all: clean build

build:
	@echo "Building the project..."
	mkdir -p $(BIN_DIR)

clean:
	@echo "Cleaning up..."
	rm -rf $(BIN_DIR)

test:
	@echo "Running tests..."
