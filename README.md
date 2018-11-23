# Twitter Unfollowing Scripts

This is a simple tool to mostly unfollow everyone when you need to reduce your
twitter usage or the noise.

It's not guaranteed to work beyond "hey, it worked for me". That said feel free
to file issues or submit PRs.

# Usage

<small>
This has only been tested on ubuntu 16.04. Provided your distro has apt and the
ruby package exists and installs gem, this should all still work for you.
</small>

This is really just a wrapper around the fantastic command line twitter tool,
`t`. I've tried to make getting going with that simple:
```
make setup
```
This will install `gem`, use `gem` to install `t`, and then run the authorize
command for `t`. Follow the instructions in the terminal and you should be all
set.

To backup your followers, run
```
make backup
```

This will create a list of your followers in `data/followers.txt`, and create
a twitter list named `backup` and copy all of your followers to that.

To unfollow everyone you can run
```
make unfollow
```
This unfollows everyone. Note that it will automatically run the backup first.

If there are usernames you don't want to unfollow, you can create a file
`data/keepers.txt`. Put the usernames you want to keep, one per newline, in
that file, and `make unfollow` won't unfollow them.
