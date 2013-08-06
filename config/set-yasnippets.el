;; yasnippet
(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet")
(require 'yasnippet)
(setq yas/snippet-dirs '("~/.emacs.d/elisp/snippets" "~/.emacs.d/elisp/snipplet/extras/imported"))
(yas/global-mode 1)
