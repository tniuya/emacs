;;set-flymake-coffee.el
(add-to-list 'load-path "./.emacs.d/elisp/el-get/flymake-coffee")
(when (require 'flymake-coffee nil t)
  (add-hook 'coffee-mode-hook 'flymake-coffee-load)
)
