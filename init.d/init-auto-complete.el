(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode 1)

;; close pop-up menu
;(setq ac-auto-show-menu nil)

;; dirty fix for having AC everywhere
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode
  (lambda ()
    (if (not (minibufferp (current-buffer)))
    (auto-complete-mode 1))))

(real-global-auto-complete-mode t)
