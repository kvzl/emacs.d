(require 'js2-mode)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook '(lambda ()
			    (setq js2-strict-missing-semi-warning nil)
			    (setq-default js2-basic-offset 4)
			    (define-key js2-mode-map (kbd "RET") 'newline-and-indent)))
