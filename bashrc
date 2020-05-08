# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias mv='mv -i'
alias page="ls|less"alias page="ls|less"
alias emacs="emacs -nw"
alias get_ip="ifconfig|grep 'inet ' | awk '{print \$2}'"
alias ports_ouverts="netstat -plantu | grep -i listen"
alias heure="date "+%k_%M""

#user variables

stop_service() { systemctl status "$1" >/dev/null 2>/dev/null && systemctl stop "$1" || echo "$1 n'est pas en cours..."; }
start_service() { systemctl status "$1" >/dev/null 2>/dev/null && echo "deja en cours" ||systemctl start "$1"; }

set -o noclobber
