set -x ANDROID_HOME /opt/android-sdk
set -x PATH $ANDROID_HOME/tools $PATH
set -x PATH $ANDROID_HOME/tools/bin $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH

function venv
    if not test -d venv
        virtualenv venv
    else
        source venv/bin/activate.fish
    end
end


if status is-interactive
    # to clear command
  
    alias clear="TERMINFO=/usr/share/terminfo TERM=xterm /usr/bin/clear"
  
    #django alias
    alias djrun="python manage.py runserver"
    alias djmakemigrations="python manage.py makemigrations"
    alias djmigrate="python manage.py migrate"
    alias djshell="python manage.py shell"
    alias djtest="python manage.py test"
    alias djcollectstatic="python manage.py collectstatic"
    alias djsuperuser="python manage.py createsuperuser"
    alias djcheck="python manage.py check"
    alias djdumpdata="python manage.py dumpdata"
    alias djloaddata="python manage.py loaddata"
    # end djaango alias
  
    #xampp alias
    alias startxampp="sudo xampp startapache && sudo xampp startmysql"
    alias stopxampp="sudo xampp stop"
  
    alias pm="pnpm "
    alias restart="sudo systemctl restart"
    
    alias removeswap="rm -rf ~/.local/state/nvim"

    # git alias 
    alias gpush="git push origin"
    alias gswitch="git switch"
  
    alias gpt="tgpt "
  
    # my alias
    alias v="neovide "
    alias showkeys="screenkey  -s medium -p bottom --geometry 24%x50%+74%+50% --opacity 0.9 -M "
  
end
  
starship init fish | source
