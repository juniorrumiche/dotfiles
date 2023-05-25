function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  set -l show_untracked (git config --bool bash.showUntrackedFiles)
  set -l untracked
  if [ "$theme_display_git_untracked" = 'no' -o "$show_untracked" = 'false' ]
    set untracked '--untracked-files=no'
  end
  echo (command git status -s --ignore-submodules=dirty $untracked 2> /dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
set -g gray (set_color -o "#8c8fa1")
set -g flamingo (set_color -o "#ef9f76")
set -g blue (set_color -o "#8caaee")
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -g green (set_color -o "#a5adce")
  set -l magenta (set_color -o magenta)
  set -l normal (set_color normal)

  if test $last_status = 0
      set arrow "$red$green$yellow "
  else
      set arrow "$red "
  end
  set -l cwd $flamingo(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info " $green on  $git_branch$green"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $arrow '' $gray' ' $blue$USER ' ' $gray ' '  $cwd $git_info $normal ' '
end
