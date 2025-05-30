# config.nu
#
# Installed by:
# version = "0.104.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

use std "path add"

source ~/.oh-my-posh.nu
source ~/.zoxide.nu
alias cd = z
source ~/.cache/carapace/init.nu
$env.PYENV_ROOT = "~/.pyenv" | path expand
if (( $"($env.PYENV_ROOT)/bin" | path type ) == "dir") {
  $env.PATH = $env.PATH | prepend $"($env.PYENV_ROOT)/bin" }
$env.PATH = $env.PATH | prepend $"(pyenv root)/shims"
$env.config.show_banner = false
$env.CUDA_PATH = "/opt/cuda"
path add ["/opt/cuda/bin" "/usr/lib/jvm/default/bin"]
$env.NVCC_BIN = "/usr/bin/g++-14"

