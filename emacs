;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

;; Turn off the toolbar
(tool-bar-mode -1)
;; Turn off the scrollbar
(scroll-bar-mode -1)
;; Turn on the line number
(global-linum-mode t)
;; Turn off the splash screen
(setq inhibit-splash-screen t)

;; Set default font
(set-face-attribute 'default nil :font "Cascadia Code 16")

;; Set <f2> to open the config file ~/.emacs
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

;; Completion using company
(global-company-mode t)

;; Set cursor type
(setq-default cursor-type 'bar)

;; Don't use backup files
(setq make-backup-files nil)

;; Set code highlight in org mode
(require 'org)
(setq org-src-fontify-natively t)

;; Use package
(delete-selection-mode t)

;; Start on full screen
;(setq initial-frame-alist (quote ((fullscreen . maximized))))


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; Seach highlight
(global-hl-line-mode t)

;; Monokai theme
(load-theme 'monokai t)

;; Use vim mode
(require 'evil)
(evil-mode 1)

;; Set jj to <esc>
(require 'key-chord)
;; Exit insert mode by pressing j and the j quickly
(setq key-chord-two-delay 0.5)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; Use recent mode
(require 'recentf)
(recentf-mode 1)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Swiper settings
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;; Smartparens
(require 'smartparens-config)
(smartparens-global-mode t)

;; Config js2-mode for javascript
(setq auto-mode-alist
      (append '(("\\.js\\'" . js2-mode))
	      auto-mode-alist))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.01)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("a2cde79e4cc8dc9a03e7d9a42fabf8928720d420034b66aecc5b665bbf05d4e9" default)))
 '(package-selected-packages
   (quote
    (evil-smartparens swiper-helm key-chord evil-tutor company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-external-variable ((t (:foreground "dark gray")))))
