(load "~/.emacs.d/scripts/init-el-get.el")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(require 'ido)
(ido-mode t)

(load-theme 'molokai t)

(setq inhibit-startup-screen t)
(global-linum-mode 1)
(show-paren-mode 1)
(scroll-bar-mode -1)

(setq linum-format " %d ")

(eshell)


(defun eshell-v ()
  (interactive)
  (split-window-vertically)
  (other-window 1)
  (eshell))




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
