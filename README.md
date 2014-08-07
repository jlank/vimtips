Vim Tips Notifications
==========

## What is this?

If you're like me you bookmark a lot of great resources and never look at them again.

I was sick of looking at my bookmarks and seeing [this awesome](http://zzapper.co.uk/vimtips.html) resource not being used.
Therefore, I wrote this little project to send me OSX notifications with a line from that list of Vim Tips at a random point in the day (after 10 AM) daily.
If you click the notification out of interest you'll get opened up to that line in the file and be able to test it out, or you could just ignore it!

Learn on.

## How to use it?

It needs `terminal-notifier` [a ruby gem](https://github.com/alloy/terminal-notifier), `atrun` enabled, and a `crontab` to work.
running `./install_depenencies.sh` should do the trick.
OSX only, sorry!

Also, you may need to restart your computer to get `terminal-notifier` to actually launch the terminal into the list.


## Install Step by Step

1. `./install_dependencies.sh`
2. `crontab -e` and add `0 0 * * * ~/Scm/vimtips/cron.sh >/dev/null 2>&1`
3. potential restart

## Bugs

there are no bugs in this project. /saracasm

send PR's