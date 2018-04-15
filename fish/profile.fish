set -gx TERM linux
set -gx LESSCHARSET utf-8
set -gx EDITOR vim
set -gx GIT_PS1_SHOWDIRTYSTATE 1
set -gx ACK_PAGER 'less -FRX'

# locale
set -x OS uname
if [ "$OS" = "Linux" ]
    set -gx LC_ALL "en_US.utf8"
else
    set -gx LC_ALL "en_US.UTF-8"
end
