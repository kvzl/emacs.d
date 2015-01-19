(require 'tabbar)

(tabbar-mode t)

(define-prefix-command 'lwindow-map)

(setq tabbar-buffer-groups-function
      (lambda ()
	(list "All")))

