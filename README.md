# linux-last-users
Enrich output of Linux' **last** command with data from **/etc/passwd** and **/etc/group**.

Reverse output of **last** (most recent login at bottom) and append user's full name, primary group name and home directory to each line.


`alias lastusers='curl -Lks https://cdn.rawgit.com/jcderuiter/linux-last-users/master/lastusers.pl | perl -'`
