;;set-js2-mode.el
(add-to-list 'load-path "~/.emacs.d/elisp/js2-mode")
(autoload 'js2-mode "js2-mode" nil t)
;(require 'js2-mode nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
