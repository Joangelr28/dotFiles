if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Configuraciones para mejorar el comportamiento de línea de comandos
    set -g fish_emoji_width 2
    set -g fish_ambiguous_width 1
    
    # Configurar el comportamiento de wrapping
    set -g fish_term24bit 1
end

# INIT
zoxide init --cmd cd fish | source
starship init fish | source
rbenv init - fish | source
jenv init - fish | source

# RBENV
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

# JAVA ENV
set -gx PATH $HOME/.jenv/bin $PATH

# ANDROID
# set --export JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
# set PATH $PATH:$JAVA_HOME/bin

# ANDROID
set --export ANDROID_HOME $HOME/Library/Android/sdk
set --export ANDROID_SDK_ROOT $ANDROID_HOME
set -gx PATH $ANDROID_SDK_ROOT/emulator $PATH
set -gx PATH $ANDROID_SDK_ROOT/platform-tools $PATH
set -gx PATH $ANDROID_SDK_ROOT/tools $PATH
set -gx PATH $ANDROID_SDK_ROOT/tools/bin $PATH

# NVM
set -x NVM_DIR ~/.nvm
nvm use default --silent
set -gx PATH $HOME/.local/state/lvim $PATH

# DART
set -gx PATH $HOME/.pub-cache/bin $PATH

# KOTLIN
set --export LC_ALL en_US.UTF-8

# GO
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/go/bin

# .NET
set -gx PATH $HOME/opt/homebrew/opt/dotnet@8/bin $PATH
set -gx PATH $PATH ~/.dotnet/tools

# Added by Windsurf
fish_add_path /Users/vilk4s/.codeium/windsurf/bin
