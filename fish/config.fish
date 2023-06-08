if status is-interactive
    alias djrun="python manage.py runserver"
    alias djstart="python manage.py startapp"
    alias djmakemig="python manage.py makemigrations"
    alias djmig="python manage.py migrate"
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
    alias showkeys="screenkey  -s medium -p bottom --geometry 24%x50%+74%+50% --opacity 0.9 -M "
  
end
  
starship init fish | source
