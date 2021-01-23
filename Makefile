compile: compilec compilelib
	echo Finished Rust Build

compilec:
	gcc tests/main.cpp -L./LibLSFW/target/debug -lLSFW -o tests/test.o
	sudo cp ./LibLSFW/target/debug/libLSFW.so /lib/libLSFW.so
	echo Finished C++ Build


compilelib:
	cd LibLSFW; cargo build

runjs:
	node js-test/index.js


.SILENT:
runc:
	cd build
	./build/test.o
	cd ..