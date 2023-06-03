# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# options
setopt autocd
#setopt COMPLETE_ALIASES

# plugins
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh # to update: $ git -C ~zsh-autocomplete pull

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# system aliases
alias ls="ls --color=auto"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias asd="yay -Syu --noconfirm"

# git aliases
alias gd="git diff"
alias gs="git status"
alias ga="git add ."
alias gat="git add -u"
alias gc="git commit -m"
alias gr="git rev-parse --show-toplevel"
alias gps="git push"
alias gpf="git push --force"
alias gpl="git pull"
alias qwe='f() { gs && ga && gc $1 && gps };f' #single quotes for args bc they are passed as double quote strs 
alias qqwe='f() { gs && ga && gc "quick commit" && gps };f'
alias gbdel='f() { git branch -D $1 };f'
alias gb='f() { git checkout -b $1 };f'
alias gsw='f() { git switch $1 };f'
alias gch='f() { git checkout $1 };f'

# school aliases
alias wksp392='f() { cd $(gr)/CS392 && gsw 392 };f'
alias qwe392='f() { cd $(gr) && gs && gsw 392 && git add CS392/ && gc $1 && gps };f'
alias qqwe392='f() { cd $(gr) && gs && gsw 392 && git add CS392/ && gc "quick commit 392" && gps };f'

alias wksp496='f() { cd $(gr)/CS496 && gsw 496 };f'
alias qwe496='f() {cd $(gr)/CS496/SIT-Coursework-PLaF && qwe $1 && gsw 496 && cd $(gr) && git submodule update CS496/SIT-Coursework-PLaF};f'
alias qqwe496='f() {cd $(gr)/CS496/SIT-Coursework-PLaF && qqwe && gsw 496 && cd $(gr) && git submodule update CS496/SIT-Coursework-PLaF};f'

alias wksp546='f() { cd $(gr)/CS546 && gsw 546 };f'
alias qwe546='f() { cd $(gr) && gs && gsw 546 && git add CS546/ && gc $1 && gps };f'
alias qqwe546='f() { cd $(gr) && gs && gsw 546 && git add CS546/ && gc "quick commit 546" && gps };f'

alias wksp555='f() { cd $(gr)/CS555 && gsw 555 };f'
alias qwe555='f() { cd $(gr) && gs && gsw 555 && git add CS555/ && gc $1 && gps };f'
alias qqwe555='f() { cd $(gr) && gs && gsw 555 && git add CS555/ && gc "quick commit 555" && gps };f'

# config aliases
alias cgd="config diff"
alias cgs="config status"
alias cgat="config add -u"
alias cgc="config commit -m"
alias cgps="config push"
alias cgpf="config push --force"
alias cgpl="config pull"
alias cqwe='f() { cgs && cgat && cgc $1 && cgps };f' 
alias qcqwe='f() { cgs && cgat && cgc "quick commit" && cgps };f'

# opam configuration
[[ ! -r /home/iscii/.opam/opam-init/init.zsh ]] || source /home/iscii/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

