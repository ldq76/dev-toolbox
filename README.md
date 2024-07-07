# dev-toolbox
Installation and configuration of personal developer tools.

## oh-my-zsh
```bash
if command -v curl >/dev/null 2>&1; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ldq76/dev-toolbox/main/oh-my-zsh/install.sh)"
else
  sh -c "$(wget -O- https://raw.githubusercontent.com/ldq76/dev-toolbox/main/oh-my-zsh/install.sh)"
fi
```
