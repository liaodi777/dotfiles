if status is-interactive
    # Commands to run in interactive sessions can go here
end

# peco
function fish_user_key_bindings
  bind \cr peco_select_history # Bind for peco select history to Ctrl+R
  bind \cf peco_change_directory # Bind for peco change directory to Ctrl+F
end

starship init fish | source
~/.local/bin/mise activate fish | source
