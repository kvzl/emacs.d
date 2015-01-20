(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-hook 'web-mode-hook '(lambda ()
			    (setq web-mode-markup-indent-offset 4)
			    (setq web-mode-css-indent 4)
			    (setq web-mode-code-indent-offset 4)
			    (setq web-mode-indent-style 4)
			    (setq web-mode-enable-current-element-highlight t)
			    (setq web-mode-enable-auto-pairing t)
			    (setq web-mode-enable-auto-closing t)
			    (setq web-mode-enable-auto-indentation t)
			    (setq web-mode-ac-sources-alist
				  '(("css" . (ac-source-css-property))
				    ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
			    ))

