#!/bin/bash

dir="\[\033[97;106m\] ${PWD##*/} "

if [ "$1" = "0" ];
then
	status="\[\033[102m\] ✓ "
else
	status="\[\033[41m\] ✗ "
fi

git_branch="$(git symbolic-ref -q HEAD 2>/dev/null)"
if [ "$?" = "0" ]; then
	git_branch=${git_branch##refs/heads/}
	git_branch=${git_branch:-HEAD}
	git_branch="\[\033[43m\] $git_branch "
else
	unset git_branch
fi

echo -e "${dir}${git_branch}${status}\[\033[30;107m\]$\[\033[0m\] "
