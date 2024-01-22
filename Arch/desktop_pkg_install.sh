#!/bin/bash

#インストールするパッケージのリスト
packages_file="desktop_pkg.txt"

# パッケージのインストール
while IFS= read -r package
do
    # インストール済みかどうかを確認
    if yay -Qi "$package" &> /dev/null; then
        echo "$package は既にインストール済みだよ。スキップスキップ！"
    else
        yay -S --noconfirm "$package"
    fi
done < "$packages_file"

echo "パッケージのインストールが完了したよ。"
