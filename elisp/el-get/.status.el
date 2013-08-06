((anything-ipa status "installed" recipe
	       (:name anything-ipa :auto-generated t :type emacswiki :description "Anything interface of In Place Annotation" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/anything-ipa.el"))
 (auto-async-byte-compile status "installed" recipe
			  (:name auto-async-byte-compile :description "Automatically byte-compile when saved" :website "http://www.emacswiki.org/emacs/AutoAsyncByteCompile" :type emacswiki :post-init
				 (add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
				 :features "auto-async-byte-compile"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)))
 (auto-complete-ruby status "installed" recipe
		     (:name auto-complete-ruby :description "Auto-complete sources for Ruby" :type http :url "http://www.cx4a.org/pub/auto-complete-ruby.el" :depends
			    (auto-complete)))
 (auto-install status "installed" recipe
	       (:name auto-install :description "Auto install elisp file" :type emacswiki))
 (coffee-mode status "installed" recipe
	      (:name coffee-mode :website "http://ozmm.org/posts/coffee_mode.html" :description "Emacs Major Mode for CoffeeScript" :type github :pkgname "defunkt/coffee-mode" :features coffee-mode :post-init
		     (progn
		       (add-to-list 'auto-mode-alist
				    '("\\.coffee$" . coffee-mode))
		       (add-to-list 'auto-mode-alist
				    '("Cakefile" . coffee-mode))
		       (setq coffee-js-mode 'javascript-mode))))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (direx status "installed" recipe
	(:name direx :description "Directory Explorer" :website "https://github.com/m2ym/direx-el" :type github :pkgname "m2ym/direx-el" :features "direx"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el"))
 (emacs-w3m status "installed" recipe
	    (:name emacs-w3m :description "A simple Emacs interface to w3m" :type cvs :module "emacs-w3m" :url ":pserver:anonymous@cvs.namazu.org:/storage/cvsroot" :build
		   `("autoconf"
		     ("./configure" ,(concat "--with-emacs=" el-get-emacs))
		     "make")
		   :build/windows-nt
		   ("sh /usr/bin/autoconf" "sh ./configure" "make")
		   :info "doc"))
 (flymake-coffee status "installed" recipe
		 (:name flymake-coffee :type github :pkgname "purcell/flymake-coffee" :description "Flymake support for coffee script" :website "http://github.com/purcell/flymake-coffee" :depends
			(flymake-easy)
			:post-init
			(add-hook 'coffee-mode-hook 'flymake-coffee-load)))
 (flymake-css status "installed" recipe
	      (:name flymake-css :type github :pkgname "purcell/flymake-css" :description "Flymake support for css using csslint" :website "http://github.com/purcell/flymake-css" :depends
		     (flymake-easy)
		     :post-init
		     (add-hook 'css-mode-hook 'flymake-css-load)))
 (flymake-cursor status "installed" recipe
		 (:name flymake-cursor :type github :pkgname "illusori/emacs-flymake-cursor" :description "displays flymake error msg in minibuffer after delay (illusori/github)" :website "http://github.com/illusori/emacs-flymake-cursor"))
 (flymake-easy status "installed" recipe
	       (:name flymake-easy :type github :description "Helpers for easily building flymake checkers" :pkgname "purcell/flymake-easy" :website "http://github.com/purcell/flymake-easy"))
 (flymake-extension status "installed" recipe
		    (:name flymake-extension :auto-generated t :type emacswiki :description "Some extension for flymake" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/flymake-extension.el"))
 (flymake-for-csharp status "installed" recipe
		     (:name flymake-for-csharp :auto-generated t :type emacswiki :description "C# mode derived mode" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/flymake-for-csharp.el"))
 (flymake-ruby status "installed" recipe
	       (:name flymake-ruby :type github :description "A flymake handler for ruby-mode files" :pkgname "purcell/flymake-ruby" :website "http://github.com/purcell/flymake-ruby" :depends
		      (flymake-easy)
		      :post-init
		      (add-hook 'ruby-mode-hook 'flymake-ruby-load)))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (helm status "installed" recipe
       (:name helm :description "Emacs incremental and narrowing framework" :type github :pkgname "emacs-helm/helm" :compile nil :features helm-config))
 (inf-ruby status "installed" recipe
	   (:name inf-ruby :description "Inferior Ruby Mode - ruby process in a buffer." :type github :pkgname "danielsz/inf-ruby"))
 (ipa status "installed" recipe
      (:name ipa :description "In-place annotations" :type emacswiki :features "ipa"))
 (js2-mode status "installed" recipe
	   (:name js2-mode :website "https://github.com/mooz/js2-mode#readme" :description "An improved JavaScript editing mode" :type github :pkgname "mooz/js2-mode" :prepare
		  (autoload 'js2-mode "js2-mode" nil t)))
 (js3-mode status "installed" recipe
	   (:name js3-mode :website "https://github.com/thomblake/js3-mode#readme" :description "A chimeric fork of js2-mode and js-mode" :type github :pkgname "thomblake/js3-mode" :prepare
		  (autoload 'js3-mode "js3" nil t)))
 (line-num status "installed" recipe
	   (:name line-num :auto-generated t :type emacswiki :description "Display line numbers in left-margin of buffer." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/line-num.el"))
 (lispxmp status "installed" recipe
	  (:name lispxmp :description "Automagic emacs lisp code annotation" :type emacswiki :features "lispxmp"))
 (open-junk-file status "installed" recipe
		 (:name open-junk-file :description "Open a junk (memo) file to try-and-error" :type emacswiki :features "open-junk-file"))
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
		 (progn
		   (setq package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))
			 package-directory-list
			 (list
			  (file-name-as-directory package-user-dir)
			  "/usr/share/emacs/site-lisp/elpa/"))
		   (make-directory package-user-dir t)
		   (unless
		       (boundp 'package-subdirectory-regexp)
		     (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
		   (setq package-archives
			 '(("ELPA" . "http://tromey.com/elpa/")
			   ("gnu" . "http://elpa.gnu.org/packages/")
			   ("marmalade" . "http://marmalade-repo.org/packages/")
			   ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :pkgname "auto-complete/popup-el"))
 (rcodetools status "installed" recipe
	     (:name rcodetools :description "rcodetools is a collection of Ruby code manipulation tools." :type github :pkgname "tnoda/rcodetools"))
 (rhtml-mode status "installed" recipe
	     (:name rhtml-mode :description "Major mode for editing RHTML files" :type github :pkgname "eschulte/rhtml" :prepare
		    (progn
		      (autoload 'rhtml-mode "rhtml-mode" nil t)
		      (add-to-list 'auto-mode-alist
				   '("\\.html.erb$" . rhtml-mode)))))
 (rinari status "installed" recipe
	 (:name rinari :description "Rinari Is Not A Rails IDE" :type github :pkgname "eschulte/rinari" :load-path
		("." "util" "util/jump")
		:compile
		("\\.el$" "util")
		:build
		(("bundle")
		 ("rake" "doc:install_info"))
		:info "doc" :features rinari))
 (ruby-block status "installed" recipe
	     (:name ruby-block :description "highlight matching block" :type github :pkgname "adolfosousa/ruby-block.el" :website "https://github.com/adolfosousa/ruby-block.el"))
 (ruby-electric status "installed" recipe
		(:name ruby-electric :description "Electric commands editing for ruby files" :type github :pkgname "qoobaa/ruby-electric" :post-init
		       (add-hook 'ruby-mode-hook 'ruby-electric-mode)))
 (ruby-mode status "installed" recipe
	    (:name ruby-mode :builtin "24" :type http :description "Major mode for editing Ruby files." :url "http://bugs.ruby-lang.org/projects/ruby-trunk/repository/raw/misc/ruby-mode.el"))
 (rvm status "installed" recipe
      (:name rvm :description "Emacs integration for rvm" :type github :features rvm :pkgname "senny/rvm.el" :compile "rvm.el" :post-init
	     (rvm-use-default)))
 (scss-mode status "installed" recipe
	    (:name scss-mode :description "Major mode for editing SCSS files(http://sass-lang.com)" :type github :pkgname "antonj/scss-mode" :features scss-mode))
 (slime status "installed" recipe
	(:name slime :description "Superior Lisp Interaction Mode for Emacs" :type github :autoloads "slime-autoloads" :info "doc" :pkgname "antifuchs/slime" :load-path
	       ("." "contrib")
	       :compile
	       (".")
	       :build
	       '(("make" "-C" "doc" "slime.info"))
	       :post-init
	       (slime-setup)))
 (smart-compile status "installed" recipe
		(:name smart-compile :auto-generated t :type emacswiki :description "an interface to `compile'" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/smart-compile.el"))
 (smartchr status "installed" recipe
	   (:name smartchr :type github :pkgname "imakado/emacs-smartchr" :features smartchr :description "Emacs version of smartchr.vim"))
 (swank-js status "installed" recipe
	   (:name swank-js :description "SLIME REPL and other development tools for in-browser JavaScript and Node.JS" :type github :pkgname "swank-js/swank-js" :features nil))
 (yaml-mode status "installed" recipe
	    (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode")))
