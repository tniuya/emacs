;;set-direx.el
;;Library is file ~/.emacs.d/elpa/direx-20130523.1724/direx.elc
(add-to-list 'load-path  "~/.emacs.d/elpa/direx-20130523.1724")
(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)
