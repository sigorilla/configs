set -gx SHELL /usr/local/bin/fish
set -gx TERM linux
set -gx LESSCHARSET utf-8
set -gx EDITOR vim
set -gx GIT_PS1_SHOWDIRTYSTATE 1
set -gx ACK_PAGER 'less -FRX'
set -gx GPG_TTY (tty)
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
set -gx PATH "~/bin:/usr/local/bin:/usr/local/sbin:$PATH"

# locale
set -x OS uname
if [ "$OS" = "Linux" ]
    set -gx LC_ALL "en_US.utf8"
else
    set -gx LC_ALL "en_US.UTF-8"
end

set -gx theme_date_format "+%d.%m.%Y %H:%M:%S"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sigorilla/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/sigorilla/Downloads/google-cloud-sdk/path.fish.inc'; end
