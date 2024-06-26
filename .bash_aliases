# Python
alias py="python3"

# Dotnet
alias dt="dotnet"
alias dtn="dotnet new"
alias dtl="dotnet list"
alias dtwr="dotnet watch run"

# ls
alias ll="ls_extended -lh"
alias la="ls -ld .?*"
alias l="ls -CF"

# cd
alias idweaver="cd ~/Documents/idweaver/"

# Laravel
alias sail="bash vendor/bin/sail"

# Docker
alias dockerps="docker ps --format 'table {{.Image}}\t{{.Status}}\t{{.Ports}}\t{{.Names}}'"
alias dockerimages="docker images --format 'table {{.Repository}}\t{{.Tag}}\t{{.Size}}'"

# Fuzzy
alias fuzzy="find -type f | fzf --border=rounded --preview 'batcat --color=always {}' | xargs -r code"

# Source bash
alias sourcebash="source ~/.bashrc"

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi
# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
