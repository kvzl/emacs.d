(require 'paredit)

(autoload 'enable-paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)


(defun my-paredit-nonlisp ()
  "Turn on paredit mode for non-lisp."
  (interactive)
  (set (make-local-variable 'paredit-space-for-delimiter-predicates)
       '((lambda (endp delimter) nil)))
  (paredit-mode 1))

(add-hook 'emacs-lisp-mode 'enable-paredit-mode)
(add-hook 'js2-mode-hook 'enable-paredit-mode)
(add-hook 'js2-mode-hook '(lambda ()
			    (define-key js2-mode-map "{" 'paredit-open-curly)
			    (define-key js2-mode-map "}" 'paredit-close-curly)))

(dolist (mode '(js2))
  (add-hook (intern (format "%s-mode-hook" mode))
            '(lambda ()
               (add-to-list (make-local-variable 'paredit-space-for-delimiter-predicates)
                            (lambda (_ _) nil))
               (enable-paredit-mode))))
