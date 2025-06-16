# 🐚 bash-config

A minimal, customizable set of Bash configuration files to enhance your terminal experience. This setup includes useful aliases, environment variables, and prompt customizations that can streamline your development workflow.

## 📦 What's Included

- `bash.config`: Main Bash runtime configuration.

## 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/davieduardo001/bash-config ~/configs/bash-config
```

### Apply the Configuration

Append the following line to your `~/.bashrc` (or `~/.bash_profile` on macOS):

```bash
source ~/.bash-config/.bashrc
```

Then, reload your shell:

```bash
source ~/.bashrc
```

## ⚙️ Customize

To add your own aliases, exports, or functions without modifying the original files, create a file inside `~/.bash-config/.bashrc.d/`. For example:

```bash
# ~/.bash-config/.bashrc.d/my_custom.sh
alias gs='git status'
export EDITOR=nvim
```

The script will be automatically sourced on shell startup.

## 💡 Features

* 💻 Useful aliases for Git, navigation, and more
* 🌐 Environment variable management
* 🎨 Clean and customizable shell prompt
* 🐧 Compatible with Linux and macOS

## 🛠 Requirements

* Bash 4+
* Oh-my-bash
* Git (to clone the repository)

## 📥 Updating

To update the config with any new changes:

```bash
cd ~/.bash-config
git pull
```

## 🤝 Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add awesome feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License.
