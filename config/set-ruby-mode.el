;;ruby-mode                                                           
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/Ruby-Mode")  
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;;http://gihyo.jp/admin/serial/01/ubuntu-recipe/0117
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                     interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
;;(add-hook 'ruby-mode-hook
;;         '(lambda ()
;;            (inf-ruby-keys)))
;;Enchnced-Ruby-Mode                                                    
;;(add-to-list 'load-path "~/.emacs.d/elisp/el-get/Enhanced-Ruby-Mode") 
;  must be added after any path containing old ruby-mode                 
;;   (setq enh-ruby-program "~/.rbenv/shims/ruby") ; so that still works if ruby points to ruby1.8                                                  
;; (require 'ruby-mode)

