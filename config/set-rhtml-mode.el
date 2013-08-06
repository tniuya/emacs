;;; rhtml-mode
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/rhtml-mode")
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/rinari")
(require 'rhtml-mode)
(require 'rinari )
(add-hook 'rhtml-mode-hook
    (lambda () (rinari-launch)))
