" Update configs on save
autocmd BufWritePost $ZDOTDIR/* silent !source %
autocmd BufWritePost $SHELLDIR/* silent !source %
autocmd BufWritePost $XDG_CONFIG_HOME/X11/Xresources silent !xrdb $XDG_CONFIG_HOME/X11/Xresources
autocmd BufWritePost $XDG_CONFIG_HOME/i3/config silent !i3 restart

" Syntax highlighting for config files
autocmd BufNewFile,BufRead $SHELLDIR/* set filetype=sh
autocmd BufNewFile,BufRead $ZDOTDIR/* set filetype=zsh
autocmd BufNewFile,BufRead $XDG_CONFIG_HOME/i3/config* set filetype=i3config
autocmd BufNewFile,BufRead $POLYBAR_DIR/* set filetype=dosini
autocmd BufNewFile,BufRead *.sh set filetype=sh
autocmd BufNewFile,BufRead *.conf set filetype=conf
