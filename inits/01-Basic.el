;;
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time-mode t)

;;Not use MenuBar and Tool Bar
(menu-bar-mode 0)
(tool-bar-mode 0)

;; Use System Locate
(set-locale-environment nil)
(load-theme 'deeper-blue t)

;;keys
;;Top / End
(global-set-key (kbd "C-;")  'beginning-of-buffer)
(global-set-key (kbd "C-h")  'delete-backward-char)
(global-set-key (kbd "C-:")  'end-of-buffer)

;;comment
(global-set-key "\C-c;" 'comment-region)
(global-set-key "\C-c:" 'uncomment-region)

;;backspace use C-h
(keyboard-translate ?\C-h ?\C-?)
;; Line top push C-k All Delete
(setq kill-whole-line t)
;;share clipboard
(setq x-select-enable-clipboard t)
(global-set-key "\C-y" 'x-clipboard-yank)

;;revert
(global-set-key (kbd "C-x r") 'revert-buffer)

;;スタートアップは表示しない
(setq inhibit-startup-screen t)
;;scratchバッファのデフォのメッセージを出さない
(setq initial-scratch-message "")

;;強調表示
;; (show-paren-mode t)
;; (setq show-paren-delay 0)
;; (setq show-paren-style 'expression)

;; ミニバッファの履歴を保存する
(savehist-mode 1)

;; ミニバッファの履歴の保存数を増やす
(setq history-length 3000)

;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;; Line top push C-k All Delete
(setq kill-whole-line t)

;;swap
(setq backup-directory-alist
  (cons (cons ".*" (expand-file-name "~/.emacs.d/backup"))
        backup-directory-alist))


(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/.emacs.d/backup/") t)))

;;highlight
(show-paren-mode t)
;; Basic font
(set-face-attribute 'default nil :family "IPAExGothic" :height 100)

;; Japanese font
(set-fontset-font t 'japanese-jisx0208 (font-spec :family "Ubuntu" :height 100))

;;history
(require 'recentf)
(recentf-mode 1)
(global-set-key (kbd "C-c t") 'helm-recentf)

(setq recentf-max-saved-items 2000) ;; 2000ファイルまで履歴保存する
(setq recentf-auto-cleanup 'never)  ;; 存在しないファイルは消さない
(setq recentf-exclude '("/recentf" "COMMIT_EDITMSG" "/.?TAGS" "^/sudo:" "/\\.emacs\\.d/\\.cask/" ".png"))
(setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))

;;junkfile
(setq open-junk-file-format "~/Works/junk/%Y/%m/%Y-%m-%d-%H%M%S.")
(global-set-key (kbd "C-x j") 'open-junk-file)

(set-face-attribute 'default nil :family "Ricty Diminished" :height 120)

;; Close all buffers
(require 'cl)
(defun close-all-buffers ()
  (interactive)
  (loop for buffer being the buffers
     do (kill-buffer buffer)))
(global-set-key (kbd "C-c C-w") 'close-all-buffers)
