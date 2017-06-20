;;;php
;; php-mode
(require 'php-mode)
(add-hook 'php-mode-hook
  '(lambda()
     (php-enable-pear-coding-style 1)
   ))
(setq auto-mode-alist
      (append '(("\\.tpl$" . html-mode))
	      auto-mode-alist))

;;markdown
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;json
(require 'json-mode)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))

