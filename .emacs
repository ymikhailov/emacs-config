; Yuri Mikhailov (bitsharp@gmail.com)
; -----------------------------------

; disable splash screen

(setq inhibit-startup-message t)

; disable toolbar & scrollbar

(tool-bar-mode   -1)
(scroll-bar-mode -1)

; revert all buffers periodically

(global-auto-revert-mode t)

; disable auto save and backups

(setq auto-save-mode    nil)
(setq make-backup-files nil)

; turn off line wrapping

(setq-default truncate-lines t)

; indent with spaces instead of tabs

(setq-default indent-tabs-mode nil)

; indentation size

(setq-default tab-width 4)

; CC mode indentation size

(setq-default c-basic-offset 4)

; open .h files in C++ mode

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

; scrolling

(global-set-key [M-up]   (lambda () (interactive) (scroll-down 1)))
(global-set-key [M-down] (lambda () (interactive) (scroll-up   1)))

; move to beginning/end of line

(global-set-key [M-left]  'move-beginning-of-line)
(global-set-key [M-right] 'move-end-of-line)

; open buffer-menu instead of list-buffers

(global-set-key "\C-x\C-b" 'buffer-menu)

; bind undo to C-z

(global-unset-key "\C-z")
(global-set-key "\C-z" 'advertised-undo)

; font

(when (eq system-type 'gnu/linux)
  (set-frame-font "monospace 12"))

(when (eq system-type 'darwin)
  (set-frame-font "menlo 16"))

; color theme

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

; mac specific settings

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))
