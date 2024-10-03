# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/roeland/.zsh/completions:"* ]]; then export FPATH="/Users/roeland/.zsh/completions:$FPATH"; fi
alias ls='ls --color'
alias vi='nvim'
alias mc='mc --nosubshell'
alias lg='lazygit'

export EDITOR="nvim"

bindkey -e

### PROMPT
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}
setopt PROMPT_SUBST
export PROMPT='%(?.%F{14}⏺.%F{9}⏺)%f %2~ %F{39}$(parse_git_branch)%f%# '

### FZF catppuccin
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#b7bdf8,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--multi"
source <(fzf --zsh)

. "/Users/roeland/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit
