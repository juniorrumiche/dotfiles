if status is-interactive
    # to clear command
    alias clear="TERMINFO=/usr/share/terminfo TERM=xterm /usr/bin/clear"
    
    alias removeswap="rm -rf ~/.local/state/nvim"
    alias startxampp="sudo xampp startapache && sudo xampp startmysql"
    alias stopxampp="sudo xampp stop"

    # for git
    alias gpush="git push origin"
    alias gswitch="git switch"

    alias gpt="tgpt "

    # my alias
    alias v="nvim"
    alias showkeys="screenkey  -p bottom --geometry 30%x50%+68%+50% --opacity 0.6"
  
end
starship init fish | source
