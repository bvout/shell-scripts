#!/bin/bash

# run Manuskript
function etherpad() {
	# development mode is slower than production but DirtyDB is not reccommended for production
	export NODE_ENV=production
	${HOME}/Repos/Tools/etherpad-lite/src/bin/run.sh
}

# update Manuskript
function etherpad-update() {
	DIR="$PWD"
	cd "${HOME}/Repos/Tools/etherpad-lite"
	git fetch origin
	cd "$DIR"
}
