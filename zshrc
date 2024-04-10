# main RC file for zsh (to be linked to ~/.zshrc)
#

# take tike to measure boot time
#bootTimeStart=$(gdate +%s%N 2>/dev/null || date +%s%N)

source $HOME/.config/zsh/environment.zsh

typeset -a sources
sources+="$ZSH_CONFIG/environment.zsh"
sources+="$ZSH_CONFIG/oh-my-zsh.zsh"
sources+="$ZSH_CONFIG/options.zsh"
sources+="$ZSH_CONFIG/prompt.zsh"
sources+="$ZSH_CONFIG/functions.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/others.zsh"
sources+="$ZSH_CONFIG/completions.zsh"

# try to include all sources
foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

#bootTimeEnd=$(gdate +%s%N 2>/dev/null || date +%s%N)
#bootTimeDuration=$((($bootTimeEnd - $bootTimeStart)/1000000))
#echo $bootTimeDuration ms overall boot duration
