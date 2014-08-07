#!/bin/bash

sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.atrun.plist
sudo gem install terminal-notifier