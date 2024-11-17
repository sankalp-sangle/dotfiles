# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b)'

# Function to get battery information (for macOS)
function battery_info() {
    if [[ $(uname) == "Darwin" ]]; then
        battery_percent=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
        if [ $battery_percent -gt 75 ]; then
            battery_color="%F{green}"
        elif [ $battery_percent -gt 25 ]; then
            battery_color="%F{yellow}"
        else
            battery_color="%F{red}"
        fi
        echo "${battery_color}🔋${battery_percent}%%%f"
    else
        echo ""
    fi
}

# Set up the prompt (with git branch name and battery info)
setopt PROMPT_SUBST
PROMPT='%F{cyan}$(date "+%a %b %d")%f %F{white}$(date "+%I:%M %p")%f $(battery_info) %F{green}%~%f %F{red}${vcs_info_msg_0_}%f $ '


export PATH=$PATH:/Library/TeX/texbin
alias vim=nvim

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# Lazygit
alias lg='lazygit'

# vim alias to neovim 
# alias vim='nvim'
