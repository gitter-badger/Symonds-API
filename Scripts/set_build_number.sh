#!/bin/bash

git=$(sh /etc/profile; which git)
number_of_commits=$("$git" rev-list HEAD --count)
git_release_version=$("$git" describe --tags --always --abbrev=0)

agvtool new-version -all $number_of_commits
agvtool new-marketing-version $git_release_version

#target_plist="$TARGET_BUILD_DIR/$INFOPLIST_PATH"
#dsym_plist="$DWARF_DSYM_FOLDER_PATH/$DWARF_DSYM_FILE_NAME/Contents/Info.plist"
#
#for plist in "$target_plist" "$dsym_plist"; do
#    if [ -f "$plist" ]; then
#        agvtool new-version -all $number_of_commits
#        agvtool new-marketing-version $git_release_version
#        /usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString ${git_release_version#*v}" "$plist"
#    fi
#done
