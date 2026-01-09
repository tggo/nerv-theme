.PHONY: build clean run test publish help wrapper

# Default target
help:
	@echo "NERV Theme for JetBrains - Build Commands"
	@echo ""
	@echo "  make build    - Build the plugin (creates .zip in build/distributions/)"
	@echo "  make run      - Run plugin in sandboxed IDE for testing"
	@echo "  make clean    - Clean build artifacts"
	@echo "  make test     - Run tests"
	@echo "  make publish  - Publish to JetBrains Marketplace"
	@echo "  make wrapper  - Download/update Gradle wrapper"
	@echo ""

# Build the plugin
build: wrapper
	./gradlew buildPlugin
	@echo ""
	@echo "Build complete! Plugin located at:"
	@ls -la build/distributions/*.zip 2>/dev/null || echo "  build/distributions/nerv-theme-*.zip"

# Run in sandboxed IDE for testing
run: wrapper
	./gradlew runIde

# Clean build artifacts
clean:
	./gradlew clean
	rm -rf build/
	rm -rf .gradle/

# Run tests
test: wrapper
	./gradlew test

# Publish to JetBrains Marketplace (requires PUBLISH_TOKEN env var)
publish: wrapper
	./gradlew publishPlugin

# Download/setup Gradle wrapper if not present
wrapper:
	@if [ ! -f "./gradlew" ]; then \
		echo "Downloading Gradle wrapper..."; \
		gradle wrapper --gradle-version 8.5; \
	fi

# Verify plugin structure
verify:
	./gradlew verifyPlugin

# Build and show output
dist: build
	@echo ""
	@echo "Distribution files:"
	@find build/distributions -type f -name "*.zip" 2>/dev/null
