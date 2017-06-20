;;load-path
;;;emacs
;;(setq load-path (cons "~/.emacs.d/" load-path))
(setq load-path (cons "~/.emacs.d/elisp/" load-path))
(setq load-path (cons "~/.emacs.d/elpa/" load-path))

;;cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;;init loader
(require 'init-loader)
(setq init-loader-show-log-after-init 'nil)
(init-loader-load "~/.emacs.d/inits/")

;;text-encode
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
