# Make sure I don't overwrite my data without me knowing about it. The dirs
# alias just makes the stacked directories (see Crazy alias examples) more 
# readable when I list them with this command dirs.
#
alias cp cp -i
alias mv mv -i
alias df df -h
alias dirs dirs -v

#  ls: Custom formatting of the ls output (see gnuls--"man gnuls").
#  ll: Long listing--give me all the trash on all the files (most recently
#      modified files are listed last).
#   l: Alternative long listing--alphabetical order and given a section at a
#      time.
# lsd: List only the listed directories
# psa: Show all the running processes in a nice format (eg: psa)
#
alias ls ls -CF --si --color=tty
alias ll ls -latr
alias l 'ls -la \!* | $PAGER'
alias lsd 'ls -1 \!* | grep \[/@\]$'
alias psa ps -a

#  e.: Edit something (using my default editor) (eg: e. ~/.plan)
#   e: Edit the last file I edited (eg: e)
#
alias e. '$EDITOR'
alias e '\!e.'

# setup cd commands to backup multiple levels
#
alias .. 'cd ../'
alias ... 'cd ../../'
alias .... 'cd ../../../'
alias ..... 'cd ../../../../'
alias ...... 'cd ../../../../../'
alias ....... 'cd ../../../../../../'




setenv EDITOR sublime_text
if ($?term && $?prompt) set prompt = "\n%B%n@%m: %/\n{%h} %# %b"

# Use file completion, so I don't have to type out the entire filename on the
# command line every time. Expand any commands where I reference old commands
# in (like the last command, !!). Correct my command line if I make an obvious
# mistake. And, list possibilities when I use use tab to get an command to
# complete automatically for me. List jobs when a job is suspended.
#
set filec
set autoexpand
set autocorrect
set autolist = ambiguous
set listjobs = long

# Computer, no beeping! And, please, no huge corefiles. If I hit control-D by
# mistake, don't terminate my shell. Also, let me know when a background job
# completes. And... ask me if I'm sure that's what I want if I accidentally
# type something crazy like "rm *".
#
set nobeep
limit coredump 1
# set ignoreeof
limit core 0
set notify
set rmstar

# Save a good number of my commands and don't confuse me by always using my
# absolute path--pay attention to the linked directories I traverse.
#
set history = 1600
set histdup = 'prev'
set savehist = (1600 merge)
set symlinks = ignore

