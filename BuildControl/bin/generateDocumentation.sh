#!/usr/bin/env bash

if [[ "$DEVELOPER_DIR" == "/Applications/Xcode-beta.app/Contents/Developer" ]]; then
	export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"
fi

JAZZY_EXECUTABLE=`which jazzy`
if [[ $? != 0 ]]; then
	echo "error: The jazzy documentation generator must be installed. Visit https://github.com/realm/jazzy for installation information."
	exit 1
fi

pushd "`dirname $0`/../.." > /dev/null

"$JAZZY_EXECUTABLE" -o Documentation \
	-m "CleanroomASL" \
	--readme Code/README.md \
	--github_url "https://github.com/emaloney/CleanroomASL.git" \
	--author "Evan Maloney, Gilt Groupe" \
	--author_url "http://github.com/emaloney" \
	--copyright_holder "Gilt Groupe" \
	--copyright_year "2014-2015" \
	--copyright_url "http://tech.gilt.com/"
JAZZY_EXIT_CODE=$?
if [[ $JAZZY_EXIT_CODE != 0 ]]; then
	echo "error: $JAZZY_EXECUTABLE failed with an exit code of $JAZZY_EXIT_CODE; check any output above for additional details."
	exit 2
fi
