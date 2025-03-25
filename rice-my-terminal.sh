#!/bin/bash

# ─────────────────────────────────────────────
# 💻 Rice My Terminal – Supercharged Linux Setup
# By: Damian 😎
# ─────────────────────────────────────────────

set -e  # Exit on error

echo "\n🔥 Setting up your pimped-out terminal...\n"

# --- CORE TOOLS ---
echo "🔧 Installing core tools..."
sudo apt update && sudo apt install -y \
  git curl zsh kitty fzf ripgrep bat eza neofetch xclip \
  zoxide ranger tmux lolcat fortune cowsay fd-find tldr \
  unzip wget gnupg build-essential fonts-jetbrains-mono \
  gh python3-pip thefuck

# --- Set ZSH as default shell ---
chsh -s $(which zsh)

# --- Oh My Zsh ---
echo "🎉 Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# --- Powerlevel10k Theme ---
echo "🎨 Installing Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# --- Zsh Plugins ---
echo "🔌 Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# --- Kitty Themes ---
echo "🎭 Setting up Kitty themes..."
git clone https://github.com/dexpota/kitty-themes ~/.config/kitty/kitty-themes

# --- ZSH CONFIG ---
echo "⚙️ Writing .zshrc..."
cat <<EOF > ~/.zshrc
# Powerlevel10k Instant Prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZSH="\$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)

source \$ZSH/oh-my-zsh.sh

# Aliases
alias ll='eza -lah --icons'
alias cat='batcat --paging=never'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias serve='python3 -m http.server'
alias ports='netstat -tulnp'

# Suggestions
POWERLEVEL9K_INSTANT_PROMPT=quiet

# Neofetch greeting
if [[ \$- == *i* ]]; then
  neofetch
  fortune | lolcat
fi
EOF

# --- KITTY CONFIG ---
echo "🧪 Writing Kitty config..."
mkdir -p ~/.config/kitty
cat <<EOF > ~/.config/kitty/kitty.conf
font_family JetBrainsMono Nerd Font
font_size 13.0
enable_ligatures yes
cursor_shape beam
cursor_blink yes
background_opacity 0.95
dynamic_background_opacity yes
window_padding_width 10
tab_bar_edge top
tab_bar_style powerline
include ~/.config/kitty/kitty-themes/themes/Dracula.conf
allow_remote_control yes

# Keybindings
map ctrl+shift+enter new_os_window
map ctrl+shift+t new_tab
map ctrl+shift+left previous_tab
map ctrl+shift+right next_tab
map ctrl+shift+c copy_to_clipboard
map ctrl+shift+v paste_from_clipboard
EOF

echo "\n✅ Done! Restart your terminal or run 'zsh' to begin your new terminal journey! 🚀"
