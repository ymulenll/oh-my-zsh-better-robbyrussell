# oh-my-zsh-better-robbyrussell

A modernized twist on the default **robbyrussell** theme for [Oh My Zsh](https://ohmyz.sh/).  
It keeps the simplicity of the original theme while adding **AWS profile awareness** and a **clean, truncated Git branch indicator**.

---

## ✨ Features
- ✅ AWS profile indicator (in yellow, hidden if using `default`)
- ✅ Git branch truncated (configurable length, default `7` chars)
- ✅ Minimal look inspired by `robbyrussell`
- ✅ Green arrow if last command succeeded, red arrow if it failed
- ✅ Current directory in cyan

---

## 📦 Installation

### Option 1: Clone into Oh My Zsh custom themes

```bash
git clone https://github.com/ymulenll/oh-my-zsh-better-robbyrussell.git $ZSH_CUSTOM/themes/oh-my-zsh-better-robbyrussell
```

Then edit your `~/.zshrc`:

```zsh
ZSH_THEME="better-robbyrussell"
plugins=(git aws)  # required
```

Reload with:

```bash
source ~/.zshrc
```

---

### Option 2: Quick Install (One-Liner)

If you don’t want to clone manually, just run:

```bash
curl -fsSL https://raw.githubusercontent.com/ymulenll/oh-my-zsh-better-robbyrussell/main/themes/better-robbyrussell.zsh-theme -o $ZSH_CUSTOM/themes/better-robbyrussell.zsh-theme
```

Then edit your `~/.zshrc`:

```zsh
ZSH_THEME="better-robbyrussell"
plugins=(git aws)  # required
```

Reload with:

```bash
source ~/.zshrc
```

---

## ⚠️ Requirements

This theme **requires** the following Oh My Zsh plugins to function properly:

- [`git`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)  
- [`aws`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aws)  

Make sure they’re listed in your `plugins=(...)` inside `~/.zshrc`.

---

## ⚙️ Configuration

You can change the Git branch truncation length by adding this to your `~/.zshrc`:

```zsh
TRUNCATED_BRANCH_NAME_LENGTH=10
```

(Default: `7`)

---

## 📸 Preview

### Clean
<img width="551" height="326" alt="clean" src="https://github.com/user-attachments/assets/773acfbf-65eb-4614-8111-4d33401b759d" />

### Long branch name
<img width="551" height="326" alt="long branch name" src="https://github.com/user-attachments/assets/c782f29a-fd1f-47c9-b775-61927f5635e2" />

### Custom aws profile name
<img width="551" height="326" alt="custom aws profile" src="https://github.com/user-attachments/assets/7ca1ef66-7fff-4793-8510-48fba4ac1e35" />

---

## 🤝 Contributing

PRs and issues are welcome!  
If you’d like to add improvements (extra indicators, right prompt, colors, etc.), feel free to open a pull request.

---

## 📜 License

[MIT](LICENSE)

---

## 🔖 Tags

`zsh` · `oh-my-zsh` · `theme` · `robbyrussell` · `git` · `aws`
