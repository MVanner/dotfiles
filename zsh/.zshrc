export PATH=$HOME/.dotnet:$PATH
export PATH=$HOME/Library/Android/sdk/platform-tools/:$HOME/Library/Android/sdk/build-tools/37.0.0/:$HOME/Library/Android/cmdline-tools/latest/bin:$PATH
alias cd=z

export JIRATOKEN=ATATT3xFfGF07g0uJio3b2TOeOywba6TpbytpQ3wqDQXCFRNxLFvs0axgx4aYsAr5YiqghlOt-KbVa_DnRaLm_cZDGgaOL09Sss6m7eI-UE4a6vS-St22LhGSD3Vd6npBavO_XrrZNSzcT68LHHrSoMItDLc-nEqxF2555mzynlsBUiw0LPCx-c=33231C52

eval "$(zoxide init zsh)"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export DOTNET_ROOT="/opt/homebrew/opt/dotnet@6/libexec"
alias dotnet6="$DOTNET_ROOT/dotnet"
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit
