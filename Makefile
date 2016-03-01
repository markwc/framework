default::
	@echo
	@echo "Interesting targets to make:"
	@echo "  clean     Remove build directory"
	@echo "  static    Run cppcheck on code"
	@echo "  test      Build all code and run unit tests"
	@echo

clean_built: 
	@rm -rf build

clean:: clean_built

test::
	@mkdir -p build
	cd build; cmake ..; make

static::
	@mkdir -p build
	cd build; cmake ..; make cppcheck


