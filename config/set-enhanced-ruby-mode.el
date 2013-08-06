;set-enhanced-ruby-mode
(add-to-list 'load-path "~/emacs.d/elisp/el-get/Enhanced-Ruby-Mode") ; must be added after any path containing old ruby-mode
(setq enh-ruby-program "/User/taka/rbenv/shims/ruby") ; so that still works if ruby points to ruby1.8
(require 'ruby-mode)
