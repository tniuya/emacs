;;set-flymake-csslint.el
(add-to-list 'load-path "~/.emacs.d/elpa/flymake-csslint-1.1.0")
    (require 'flymake-csslint)
(add-hook 'css-mode-hook 'flymake-mode)
