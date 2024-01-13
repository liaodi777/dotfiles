#!/bin/bash


# yayがインストールされているか確認
if ! command -v yay &> /dev/null; then
    echo "yayがインストールされてないね。yayをインストールするよ"
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd
    rm -rf yay-bin
else
	echo "yayは既にインストール済みだよ"
fi

#インストールするパッケージのリスト
packages_file="yay_packages.txt"

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



