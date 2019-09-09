
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(global-linum-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-frame-alist nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/"))))
 '(package-selected-packages (quote (haskell-mode)))
 '(savehist-mode 1)
 '(scroll-bar-mode nil)
 '(tab-always-indent (quote complete))
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 130 :width normal)))))

;;(add-to-list 'package-archives
;;              '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;;(require 'package)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; (require 'cursor-chg)
;; (change-cursor-mode 1)

;; (require 'exec-path-from-shell)
;; (exec-path-from-shell-initialize)
;; (when (memq window-system '(mac ns x))
;;   (exec-path-from-shell-initialize))
;; (exec-path-from-shell-copy-env "HISTFILE")

;; (require 'undo-tree)
;; (global-undo-tree-mode 1)

;; (require 'subset)
;; (global-set-key (kbd "C-w") 'xah-close-current-buffer)
;; (global-set-key (kbd "C-S-t") 'xah-open-last-closed)

;; sanity preservers
;; (global-set-key (kbd "C-x") 'xah-cut-line-or-region)
;; (global-set-key (kbd "C-c") 'xah-copy-line-or-region)

(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-y") 'redo)
(global-set-key (kbd "C-S-z") 'redo)
(global-set-key (kbd "C-s") 'save-buffer)

;; personal preferences
(global-set-key (kbd "C-S-f") 'find-file)
(global-set-key [C-iso-lefttab] 'switch-to-prev-buffer)
(global-set-key [C-tab] 'switch-to-next-buffer)
(global-set-key (kbd "C-f") 'isearch-forward-regexp)
(global-set-key (kbd "C-<prior>") 'pop-to-mark-command)

(global-set-key (kbd "C-0") 'nil)
(global-set-key (kbd "C-1") 'nil)
(global-set-key (kbd "C-2") 'nil)
(global-set-key (kbd "C-3") 'nil)
(global-set-key (kbd "C-4") 'nil)
(global-set-key (kbd "C-5") 'nil)
(global-set-key (kbd "C-6") 'nil)
(global-set-key (kbd "C-7") 'nil)
(global-set-key (kbd "C-8") 'nil)
(global-set-key (kbd "C-9") 'nil)

(global-set-key (kbd "C-u") 'insert-char)

(add-hook 'dired-mode-hook 'dired-hide-details-mode)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

(global-visual-line-mode t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'badger t)

(require 'package)

(package-initialize)
