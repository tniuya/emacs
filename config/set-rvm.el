;;set-rvm.el
;;http://straitwalk.hatenablog.com/entry/20111219/1324313977
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/rvm")
(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session 
