#
# ~/.bashrc
#



# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

#stay in current lf directory:
lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
bind '"\C-o":"lfcd\C-m"'



################
#  ls ALIASES  #
################

alias ll="ls -lAFh --color=auto --group-directories-first " \
      la="ls -AF --color=auto --group-directories-first " \
      l1="ls -1AF --color=auto --group-directories-first " \
      ls="ls --color=auto --group-directories-first "

################
#  rm ALIASES  #
################

#alias rm="trash "
#alias rmdir="trash "

#################
#  DWM ALIASES  #
#################

alias dwmc="sudo vim ~/.suckless/dwm/config.h "
alias dwmm="cd ~/.suckless/dwm/ && sudo make clean install && cd ~ "
alias dmc="sudo vim ~/.suckless/dmenu/config.h "
alias dmm="cd ~/.suckless/dmenu/ && sudo make clean install && cd ~ "
alias stc="sudo sudo vim ~/.suckless/st/config.h "
alias stm="cd ~/.suckless/st/ && sudo make clean install && cd ~ "
alias dwmbc="sudo vim ~/.suckless/dwmblocks/blocks.h "
alias dwmbm="cd ~/.suckless/dwmblocks/ && sudo make clean install  && cd ~ "

#################
# OTHER ALIASES #
#################

#alias v="vim "
alias grep="grep --color=auto "
#alias s="sudo "
alias sudo="sudo "
#alias sn="~/Downloads/Simplenote-linux-2.23.2-x64/simplenote "

############################
# NON-LOGIN SHELL COMMANDS #
############################

#keep shell history accross terminal sessions
#also there is HISTSIZE env var to determine how much commands to remember
shopt -s histappend 

xset r rate 200 55

##########
# PROMPT #
##########

#see: https://en.wikipedia.org/wiki/ANSI_escape_code

# \e[ = \033[ = ESC[
# ESC[38;2;⟨r⟩;⟨g⟩;⟨b⟩m Select RGB foreground color
# ESC[48;2;⟨r⟩;⟨g⟩;⟨b⟩m Select RGB background color

__endeffect__="\[\033[0m\]"

#colors:
#__username__="\[\033[1;38:2:0:204:0m\]"
#__username__="\[\033[1;38:2:255:178:102m\]" 
#__username__="\[\033[1;38:2:153:255:153m\]" 
__username__="\[\033[1;38:2:102:175:0m\]"
__at__="\[\033[1;38:2:0:153:76m\]"
__hostname__="\[\033[1;38:2:0:102:102m\]" 
__workingdir__="\[\033[1;38:2:153:51:255m\]"
__dollar__="\[\033[1;38:2:204:153:255m\]" 
__colon__="\[\033[1;38:2:204:255:153m\]" 

__username1__="\[\033[1;38:2:44:91:115m\]"
__at1__="\[\033[1;38:2:124:12:158m\]" 
__hostname1__="\[\033[1;38:2:153:203:168m\]" 
__dollar1__="\[\033[1;38:2:48:182:130m\]" 

__workingdir1__="\[\033[1;38:2:89:197:155m\]"
__workingdir2__="\[\033[1;38:2:106:203:165m\]"
__workingdir3__="\[\033[1;38:2:121:208:174m\]"
__workingdir4__="\[\033[1;38:2:208:121:155m\]"
__workingdir5__="\[\033[1;38:2:155:208:121m\]"
__workingdir6__="\[\033[1;38:2:121:208:191m\]"

#prompts:
# PS1="$__username__\u$__endeffect__$__at__@$__endeffect__$__hostname__\h$__endeffect__$__colon__:$__endeffect__ $__workingdir__\W$__endeffect__$__dollar__\$$__endeffect__ " #MINE
# PS1="$__username__\u$__endeffect__$__at__@$__endeffect__$__hostname__\h$__endeffect__ $__workingdir__\W$__endeffect__$__dollar__\$$__endeffect__ " #MINE

# PS1="$__username1__\u$__endeffect__$__at1__@$__endeffect__$__hostname1__\h$__endeffect__ $__workingdir__\W$__endeffect__$__dollar1__\$$__endeffect__ "

PS1="$__username1__\u$__endeffect__$__at1__@$__endeffect__$__hostname1__\h$__endeffect__ $__workingdir2__\W$__endeffect__$__dollar1__\$$__endeffect__ "
# PS1="$__username1__\u$__endeffect__$__at1__@$__endeffect__$__hostname1__\h$__endeffect__ $__workingdir6__\W$__endeffect__$__dollar1__\$$__endeffect__ "
# PS1="$__username1__\u$__endeffect__$__at1__@$__endeffect__$__hostname1__\h$__endeffect__ $__workingdir3__\W$__endeffect__$__dollar1__\$$__endeffect__ "
# PS1="$__username1__\u$__endeffect__$__at1__@$__endeffect__$__hostname1__\h$__endeffect__ $__workingdir4__\W$__endeffect__$__dollar1__\$$__endeffect__ "



############
# STARSHIP #
############

eval "$(starship init bash)"
