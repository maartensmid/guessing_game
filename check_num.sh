#! /usr/bin/env bash
# File: check_num.sh

function check_num {
	local re='^[+-]?[0-9]+$'
	if ! [[ $1 =~ $re ]]
	then
		echo "error: Not a number. Please re-enter your guess:"
		read guess
	fi
}
