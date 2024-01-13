#!/usr/bin/env bash

# 必要なソフトウェアパッケージのリスト
packages=("build-essential" "zsh" "git" "curl" "file")

# パッケージのインストール
for package in "${packages[@]}"
do
    if ! dpkg -s "$package" >/dev/null 2>&1; then
        sudo apt-get install -y "$package"
    else
        echo "$package は既にインストールされています"
    fi
done/
