# oh-my-zsh-better-robbyrussell

A modernized twist on the default **robbyrussell** theme for [Oh My Zsh](https://ohmyz.sh/).  
It keeps the simplicity of the original theme while adding **AWS profile awareness** and a **clean Git branch indicator** (with optional truncation).

---

## ✨ Features
- ✅ AWS profile indicator (in yellow, hidden if using `default`)
- ✅ Git branch display (optional truncation, disabled by default)
- ✅ Directory name display (optional truncation, disabled by default)
- ✅ Minimal look inspired by `robbyrussell`
- ✅ Green arrow if last command succeeded, red arrow if it failed
- ✅ Current directory in cyan

---

## 📦 Installation

```bash
curl -fsSL https://raw.githubusercontent.com/ymulenll/oh-my-zsh-better-robbyrussell/main/better-robbyrussell.zsh-theme -o $ZSH_CUSTOM/themes/better-robbyrussell.zsh-theme
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

Truncation is **disabled by default**. To enable truncation, add these variables to your `~/.zshrc`:

**Git branch truncation:**
```zsh
TRUNCATED_BRANCH_NAME_LENGTH=10
```
(Only truncates if this variable is set)

**Truncate branch name by Jira ticket:**
```zsh
TRUNCATE_BRANCH_NAME_BY_JIRA_TICKET=true
```
When enabled, extracts the Jira ticket id (e.g. `ABC-123`) from the branch name and uses it as the displayed branch. For example, `bugfix/CR-7777-fix-bug` will display as `CR-7777`. If no Jira ticket id is found, the full branch name is shown.

**Directory name truncation:**
```zsh
TRUNCATED_DIR_NAME_LENGTH=15
```
(Only truncates if this variable is set)

---

## 📸 Preview

<div align="center">

### 🎯 **Clean State** - Default appearance
*Simple and clean with no additional indicators*

<img width="551" height="326" alt="Clean theme preview showing basic prompt with green arrow and directory" src="https://github.com/user-attachments/assets/773acfbf-65eb-4614-8111-4d33401b759d" />

---

### 🌿 **Git Branch Truncation** - Long branch names
*Branch names can be truncated by setting `TRUNCATED_BRANCH_NAME_LENGTH`*

<img width="551" height="326" alt="Long branch name preview showing truncated git branch in blue parentheses" src="https://github.com/user-attachments/assets/c782f29a-fd1f-47c9-b775-61927f5635e2" />

---

### ☁️ **AWS Profile Indicator** - Custom profile awareness
*Yellow indicator shows when using non-default AWS profiles*

<img width="551" height="326" alt="Custom AWS profile preview showing yellow profile indicator" src="https://github.com/user-attachments/assets/7ca1ef66-7fff-4793-8510-48fba4ac1e35" />

</div>

> 💡 **Tip**: The theme automatically adapts to your environment - AWS profiles only show when not using `default`. Truncation is optional and can be enabled by setting `TRUNCATED_BRANCH_NAME_LENGTH` and/or `TRUNCATED_DIR_NAME_LENGTH` in your `~/.zshrc`.

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
