# $FreeBSD: releng/10.2/share/skel/dot.profile 266029 2014-05-14 15:23:06Z bdrewery $
#
# .profile - Bourne Shell startup script for login shells
#
# see also sh(1), environ(7).
#

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:$HOME/bin; export PATH
# BLOCKSIZE=K;	export BLOCKSIZE

# Setting TERM is normally done through /etc/ttys.  Do only override
# if you're sure that you'll never log in via telnet or xterm or a
# serial line.
# TERM=xterm; 	export TERM

EDITOR=vim;   	export EDITOR
PAGER=more;  	export PAGER

# set ENV to a file invoked each time sh is started for interactive use.
# ENV=$HOME/.shrc; export ENV

PATH="$PATH:$HOME/.local/bin" ; export PATH

/usr/home/ljhanson/.local/bin/powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/home/ljhanson/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

alias ls="ls -FG"
