;;set-yaml-mode.el
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/yaml-mode/")
(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
    (add-hook 'yaml-mode-hook
      '(lambda ()
        (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
