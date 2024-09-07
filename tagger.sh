#!/bin/bash

if [ $1 = 'tag' ]; then
	setfattr -n user.tag -v $2 $3
	echo "Added tag"
elif [ $1 = 'untag' ]; then
	setfattr -x user.tag $2
	echo "Removed tag"
elif [ $1 = 'check' ]; then
	getfattr -d $2
else
	echo "Not valid "
fi
