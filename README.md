# linux-last-users
Enrich output of Linux' **last** command with data from **/etc/passwd**.

Reverse output of **last** (most recent login at bottom) and append user's full name and home directory to each line.


`alias lastusers='curl -Lks https://gitcdn.link/repo/jcderuiter/linux-last-users/master/lastusers.pl | perl -'`
