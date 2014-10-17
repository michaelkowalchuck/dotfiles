# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

#echo "this is from .cshrc"

limit coredumpsize 0
set autolist

set nobeep

setenv IRCNICK mjk
setenv IRCNAME mjk
setenv USER mike 

#set the colors for ls -G output
setenv CLICOLORS
setenv LSCOLORS cxfxcxdxbxegedabagacad

#set histdup = all # remove duplicate entries in history

#setenv CPATHTMP "/home/mike/src1";
#setenv CLASSPATH ".:$CPATHTMP/UIprojectCVS/src/:$CPATHTMP/UIprojectCVS/lib/:$CPATHTMP/UIprojectCVS/lib/lib.jar:$CPATHTMP/UIprojectCVS/lib/images.jar:$CPATHTMP/UIprojectCVS/lib/JUNG/lib/jung.jar:$CPATHTMP/UIprojectCVS/lib/com/:$CPATHTMP/UIprojectCVS/lib/org/:$CPATHTMP/UIprojectCVS/lib/jdom.jar"

#unsetenv CPATHTMP

#setenv PYTHONHOME /usr/local/include/python2.4

#setenv PYTHONHOME /usr/local/lib/python2.5
#setenv PYTHONPATH /usr/local/lib/python2.5:/usr/local/lib/python2.5/lib-dynload:/usr/local/lib/python2.5/bsddb:/usr/local/lib/python2.5/compiler:/usr/local/lib/python2.5/config:/usr/local/lib/python2.5/curses:/usr/local/lib/python2.5/distutils:/usr/local/lib/python2.5/email:/usr/local/lib/python2.5/encodings:/usr/local/lib/python2.5/hotshot:/usr/local/lib/python2.5/idlelib:/usr/local/lib/python2.5/lib:/usr/local/lib/python2.5/logging:/usr/local/lib/python2.5/lib-tk:/usr/local/lib/python2.5/test:/usr/local/lib/python2.5/xml



#setenv CVSROOT ":ext:mike@abc.edu:/vol2/cvs/repository"
#setenv CVSROOT ":ext:mike@abc.edu:/usr/CVS/repository"
#setenv CVS_RSH "ssh"

#setenv XMODIFIERS "@im=kinput2"
#setenv LC_CTYPE ja_JP.eucJP
#setenv LC_ALL ja_JP.eucJP

#setenv LANG ja_JP

setenv TERM xterm-color

alias h		history 25
alias j		jobs -l
alias la	ls -a -G
alias lf	ls -FA -G
alias ll	ls -lA -G
alias llh ls -lAh -G
alias dfh df -h
alias duh du -h
alias ls	ls -GF
alias lst ls -lstr
alias xmmsu	xmms -u
alias emacs	emacs -nw
alias bc	bc ~/.bcscript
alias xlock xscreensaver-command -lock
alias grep grep --color
alias etags_better exctags -R


alias dircgui cd code/casos/construct_gui
alias dircguisrc cd code/casos/construct_gui/src
alias dirdynet cd code/casos/construct
alias casos cd code/casos

# A righteous umask
umask 22

# set javabin = (/usr/local/jdk1.4.1/bin)
set javabin = (/usr/local/java/bin)

set path = ($HOME/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $javabin)

set prompt = "%m %n %c %% "

setenv	EDITOR	vim
setenv	PAGER	less
setenv	BLOCKSIZE	K

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif


