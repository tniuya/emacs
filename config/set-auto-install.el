;;http://d.hatena.ne.jp/rubikitch/20091221/autoinstall
;;C-c C-d 現在インストールされているバージョンとインストールしようとしているバージョンをediffで比較す
;;(message "loading set-auto-install")
(add-to-list 'load-path "~/.emacs.d/elisp/auto-install")
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp/auto-install")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
