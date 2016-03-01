default::
	@echo
	@echo "Interesting targets to make:"
	@echo "  clean     Remove build directory"
	@echo "  test      Build all code and run unit tests"
	@echo

clean_built: 
	@rm -rf build

clean:: clean_built

test::
	@mkdir -p build
	cd build; cmake ..; make

static::
	cd build; cmake ..; make cppcheck


