;; -------------------------------------------------------------------------
;; @multiple-cursors.el
;;
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M->") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;Server用
(global-set-key (kbd "C-x C-c") 'suspend-emacs) ;emacs休止
(defalias 'exit 'save-buffers-kill-emacs) ;M-x exit で emacs終了
