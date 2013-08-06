;; set-coffee-mode
;;hshiy.blog.fc2.com/blog-entry-165.html
(add-to-list 'load-path "~/.emacs.d/elisp/el-get/coffee-mode")
(when (require 'coffee-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
  (add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
  (add-hook 'coffee-mode-hook
	    '(lambda () (setq tab-width 2)))
)

;; 保存したとき、拡張子以外同名のjsバッファをリロードする
(defun revert-compiled-coffee ()
  (interactive)
  (with-current-buffer
      (concat (file-name-sans-extension (buffer-name (current-buffer))) ".js")
    (revert-buffer nil t)))
(add-hook 'coffee-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'revert-compiled-coffee nil t)))

