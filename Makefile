all:
	rm -rf build
	mkdir -p build
	sudo rm -f /var/lib/solbuild/local/ww-*.eopkg
	# Build, then install, the ww-plotutils package
	cd build && sudo solbuild build -p local-unstable-x86_64 ../ww-plotutils/package.yml
	cd build && sudo install ww-plotutils-*.eopkg /var/lib/solbuild/local/
	# Update the local index
	sudo solbuild index /var/lib/solbuild/local
	# Build, then install ww-pstoedit
	cd build && sudo solbuild build -p local-unstable-x86_64 ../ww-pstoedit/package.yml
	cd build && sudo install ww-pstoedit-*.eopkg /var/lib/solbuild/local/
	# Update the local index
	sudo solbuild index /var/lib/solbuild/local

wine:
	mkdir -p build
	sudo rm -f /var/lib/solbuild/local/ww-wine-staging-*.eopkg
	# Build, then install ww-wine-staging
	#cd build && sudo solbuild build -p local-unstable-x86_64 ../ww-wine-staging/package.yml
	# TODO: Build with local unstable..  but for now, stable
	cd build && sudo solbuild build ../ww-wine-staging/package.yml
	cd build && sudo install ww-wine-staging-*.eopkg /var/lib/solbuild/local/
	# Update local index
	sudo solbuild index /var/lib/solbuild/local

