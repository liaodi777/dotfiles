#!/usr/bin/env bash

# Homebrewのインストール確認
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrewがインストールされていません。インストールしています..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrewは既にインストールされています"
fi

# 必要なパッケージのリスト
packages=("vim" "zsh" "sheldon" "tmux" "neovim" "starship" "fish" "aquaproj/aqua/aqua")

# パッケージのインストール
for package in "${packages[@]}"
do
    if brew list --formula | grep -q "^$package\$"; then
        echo "$package は既にインストールされています"
    else
        echo "$package をインストールしています..."
        brew install "$package"
    fi
done
/
