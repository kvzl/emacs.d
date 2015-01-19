(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/init.d")

(setq el-get-user-package-directory "~/.emacs.d/init.d/")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq el-get-sources
      '()
      )

(setq my:el-get-packages
      '(
	el-get
	evil
	smex
	auto-complete
	paredit
	tabbar
	js2-mode
	ac-js2
))

(setq my:el-get-packages
      (append my:el-get-packages
	      (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my:el-get-packages)


