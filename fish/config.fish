
# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
if test -d "$ZVM_INSTALL"
    set -gx PATH $PATH "$HOME/.zvm/bin"
    set -gx PATH $PATH "$ZVM_INSTALL"
end
