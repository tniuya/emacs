;;package.elの設定
(when (require 'package nil t)
  ;;パッケージリポジトリを追加
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
  ;;インストールするディレクトリを指定
  (setq package-user-dir(concat user-emacs-directory "elpa"))
  ;;インストールしたパッケージにロードパスを通して読み込む
  (package-initialize)
)
