;; set-w3m.el
;;http://d.hatena.ne.jp/suikyounohito/20120501/1335856223
;;(add-to-list 'load-path "~/.emacs.d/plugins/w3m/share/emacs/site-lisp/w3m")
;;(add-to-list 'Info-additional-directory-list "~/.emacs.d/plugins/w3m/share/info")
(require 'w3m-load)
(setq w3m-use-cookies t)  ;ログイン可能にする
(setq w3m-favicon-cache-expire-wait nil) ;favicon のキャッシュを消さない
