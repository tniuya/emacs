;;set-css-mode.el
(add-to-list 'load-path "~/.emacs.d/elpa/css-mode-1.0")
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(autoload 'css-mode "css-mode" nil t)
