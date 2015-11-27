clean_built: 
	rm -rf build

clean: clean_built

test:
	mkdir build
	cd build
	ls
	cmake ..
	make

