#!/bin/bash

git=$(sh /etc/profile; which git)
number_of_commits=$("$git" rev-list HEAD --count)
git_release_version=$("$git" describe --tags --always --abbrev=0)

agvtool new-version -all $number_of_commits
agvtool new-marketing-version $git_release_version
