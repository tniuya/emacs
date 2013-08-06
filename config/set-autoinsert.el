;;set-autoinsert.el
(add-to-list 'load-path "~/.emacs.d/elisp/autoinsert")
(require 'autoinsert)
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-directory "/Users/taka/.emacs.d/config/insert/")
(setq auto-insert-alist nil)
(setq auto-insert-alist
   (append '(
      (ruby-mode . "coding-insert.txt")
            ) auto-insert-alist
   )
)

