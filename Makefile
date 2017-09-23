all:
	rm -rf build
	mkdir -p build
	sudo rm -f /var/lib/solbuild/local/ww-*.eopkg
	cd build && sudo solbuild build -p local-unstable-x86_64 ../ww-plotutils/package.yml
	cd build && sudo install ww-plotutils-*.eopkg /var/lib/solbuild/local/
	cd build && sudo solbuild build -p local-unstable-x86_64 ../ww-pstoedit/package.yml
	cd build && sudo install ww-pstoedit-*.eopkg /var/lib/solbuild/local/

