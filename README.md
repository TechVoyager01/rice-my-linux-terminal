# 🚀 Damian's Terminal Setup (Pimp My Terminal)

Welcome to my personal terminal setup guide — this includes:

- 🌀 Zsh with Oh My Zsh + Powerlevel10k
- 🦾 Kitty Terminal with Dracula theme
- ⚙️ LazyVim setup for Neovim
- 🔧 Custom aliases, plugins, and productivity tools

---

## 🛠 Requirements

- Ubuntu or Debian-based system (or WSL)
- Git, curl, and sudo access

---

## 🧰 What This Setup Includes

### Terminal Tools:
- `zsh`, `oh-my-zsh`, `powerlevel10k`
- `fzf`, `ripgrep`, `bat`, `eza`, `zoxide`, `tldr`
- `kitty` terminal with Dracula theme + custom keybindings
- `neofetch`, `fortune`, `lolcat` for aesthetics

### Neovim:
- Neovim latest
- LazyVim starter kit
- Nerd Font (JetBrains Mono)

---

## 🔥 Install Instructions (Fresh System)

### 1. Clone this repo

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Run setup script

```bash
chmod +x pimp-my-terminal.sh
./pimp-my-terminal.sh
```

This will:
- Install all terminal tools
- Set up your Kitty + Zsh + aliases
- Install Oh My Zsh + Powerlevel10k

---

### 3. Set up LazyVim (Neovim)

```bash
sudo apt install -y neovim git curl unzip
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

git clone https://github.com/LazyVim/starter ~/.config/nvim
nvim
```

This launches LazyVim and installs your plugins.

---

### 4. (Optional) Install Nerd Font

```bash
sudo apt install fonts-jetbrains-mono
```

Or download manually from [Nerd Fonts](https://www.nerdfonts.com/font-downloads) and install.

---

## 🧠 Usage Tips

| Action              | Shortcut            |
|---------------------|---------------------|
| Open file finder    | `Space + f + f`     |
| Toggle terminal     | `Ctrl + \``         |
| File explorer       | `Space + f + e`     |
| Toggle comment      | `gcc` (normal mode) |
| Run LazyVim command | `Space + l`         |


---

## 📂 Folder Structure

```
~/dotfiles/
├── pimp-my-terminal.sh     # full setup script
├── .zshrc                  # Zsh config
├── kitty.conf              # Kitty terminal config
└── README.md               # this file
```

---

## ❤️ Credits
- [Oh My Zsh](https://ohmyz.sh)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [LazyVim](https://www.lazyvim.org)
- [Kitty Themes](https://github.com/dexpota/kitty-themes)

---

## 🙌 Let's Go
You're now running a **power-terminal setup** made for speed, style, and coding like a boss. 💪
