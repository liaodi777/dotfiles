#!/bin/bash

# インストールするパッケージのリスト
packages_file="pacman_packages.txt"

# パッケージのインストール
while IFS= read -r package
do
	# インストール済みかどうかを確認
	if pacman -Qi "$package" &> /dev/null; then
		echo "$package は既にインストール済みだよ"
	else
		sudo pacman -S --noconfirm "$package"
	fi
done < "$packages_file"

echo "パッケージのインストールが完了したよ"
