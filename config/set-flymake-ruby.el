;;set-flymake-rubye.el
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/flymake-rubye")
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
