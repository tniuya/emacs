;;set-scss-mode.el
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/scss-mode")
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil) ;; 自動コンパイルをオフにする
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
