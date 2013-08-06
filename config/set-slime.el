;;set-slime.el 
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/slime")
;;(add-to-list 'load-path "~/.emacs.d/elisp/el-get/slime/contrib")
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
;;(require 'slime-fancy)
;;(require 'slime-banner)
(slime-setup '(slime-repl slime-js))

(global-set-key [F5] 'slime-js-reload)
(add-hook 'js2-mode-hook
	  (lambda ()
	    (slime-js-minor-mode 1)))
