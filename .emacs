; Yuri Mikhailov (bitsharp@gmail.com)
; -----------------------------------

; disable splash screen

(setq inhibit-startup-message t)

; disable toolbar & scrollbar

(tool-bar-mode   -1)
(scroll-bar-mode -1)

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

; scrolling

(global-set-key [M-up]   (lambda () (interactive) (scroll-down 1)))
(global-set-key [M-down] (lambda () (interactive) (scroll-up   1)))

; open buffer-menu instead of list-buffers

(global-set-key "\C-x\C-b" 'buffer-menu)

; font

(set-frame-font "ubuntu mono 14")

; color theme

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)