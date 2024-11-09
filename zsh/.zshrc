alias ls='ls --color'
alias vi='nvim'
alias mc='mc --nosubshell'
alias lg='lazygit'
#alias python='python3'
#alias pip='pip3'

export EDITOR="vi"

bindkey -e

export PATH=/Users/roeland/.local/bin:$HOME/go/bin:$PATH

## FZF
export FZF_DEFAULT_COMMAND="rg --files --sort modified"
export FZF_DEFAULT_OPTS="--tac"
source <(fzf --zsh)

### PROMPT
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
export PROMPT='%(?.%F{14}⏺.%F{9}⏺)%f %2~ %F{39}$(parse_git_branch)%f%# '

alias kamal='docker run -it --rm -v "${PWD}:/workdir" -v "/run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock" -e SSH_AUTH_SOCK="/run/host-services/ssh-auth.sock" -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/basecamp/kamal:latest'
