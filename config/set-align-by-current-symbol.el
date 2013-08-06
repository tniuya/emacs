;;set-align-by-current-symbol.el
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/align-by-current-symbol")
(require 'align-by-current-symbol)
(global-set-key (kbd "C-c C-.") 'align-by-current-symbol)
;;(global-set-key (kbd "C-c C-.") 
;;    (lambda () 
;;       (interactive) (align-by-current-symbol t)))
