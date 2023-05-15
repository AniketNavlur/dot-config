function add-path {
    case ":${PATH}:" in
        *:"$@":*)
            ;;
        *)
            export PATH="$@:$PATH"
            ;;
    esac
}

HISTSIZE=10000000
SAVEHIST=10000000

setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.

source .cfg/cfg-setup.sh

add-path /Users/anavlur/.local/bin

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-hist/zsh-hist.plugin.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

export GPG_TTY=$(tty)

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || add-path $PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(starship init zsh)"

. "/Users/anavlur/.deno/env"
