;;set-zen-coding-mode.el
;;
(add-to-list 'load-path "~/.emacs.d/elisp/zencoding-mode/") 
(require 'zencoding-mode)                                
(add-hook 'sgml-mode-hook 'zencoding-mode) ;; Auto-start on any markup modes   
(define-key zencoding-mode-keymap (kbd "C-i") 'zencoding-expand-line)
