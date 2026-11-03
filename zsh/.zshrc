export PATH=$HOME/.dotnet:$PATH
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH=$HOME/Library/Android/sdk/platform-tools/:$HOME/Library/Android/sdk/build-tools/37.0.0/:$HOME/Library/Android/cmdline-tools/latest/bin:$PATH
export PATH=$HOME/.config/nvim/netcoredbg/:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/emacs/bin/:$PATH"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/microsoft-21.jdk/Contents/Home"
export PATH="$ANDROID_HOME/emulator:$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"

# dotnet SDK root matches the primary "dotnet" binary in PATH (v10 via manual install)
export DOTNET_ROOT="$HOME/.dotnet"

export GOOGLE_APPLICATION_CREDENTIALS=~/dotfiles/Relesys-Core-Service-Account.json

export TERM=xterm-256color

export JIRATOKEN=ATATT3xFfGF07g0uJio3b2TOeOywba6TpbytpQ3wqDQXCFRNxLFvs0axgx4aYsAr5YiqghlOt-KbVa_DnRaLm_cZDGgaOL09Sss6m7eI-UE4a6vS-St22LhGSD3Vd6npBavO_XrrZNSzcT68LHHrSoMItDLc-nEqxF2555mzynlsBUiw0LPCx-c=33231C52

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Explicit version aliases — use when you need a specific SDK outside of project context
alias dotnet6="/opt/homebrew/opt/dotnet@6/libexec/dotnet"
alias dotnet8="/opt/homebrew/opt/dotnet@8/libexec/dotnet"

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

eval "$(zoxide init zsh)"
export PATH="/Applications/CMake.app/Contents/bin:$PATH"
