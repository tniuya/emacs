;;; rspec-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "rspec-mode" "rspec-mode.el" (20949 62924 0
;;;;;;  0))
;;; Generated autoloads from rspec-mode.el

(autoload 'rspec-mode "rspec-mode" "\
Minor mode for rSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (when (rspec-buffer-is-spec-p) (rspec-mode)))))

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (local-set-key (kbd "C-c ,v") 'rspec-verify) (local-set-key (kbd "C-c ,a") 'rspec-verify-all) (local-set-key (kbd "C-c ,t") 'rspec-toggle-spec-and-target))))

(eval-after-load 'ruby-mode '(add-hook 'rails-minor-mode-hook (lambda nil (local-set-key (kbd "C-c ,v") 'rspec-verify) (local-set-key (kbd "C-c ,a") 'rspec-verify-all) (local-set-key (kbd "C-c ,t") 'rspec-toggle-spec-and-target))))

(eval-after-load 'ruby-mode '(add-hook 'rspec-mode-hook (lambda nil (merge-abbrev-tables rspec-mode-abbrev-table local-abbrev-table))))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; rspec-mode-autoloads.el ends here
