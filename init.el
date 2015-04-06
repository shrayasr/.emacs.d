(blink-cursor-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(global-linum-mode t)
(global-hl-line-mode t)

(define-key global-map (kbd "RET") 'newline-and-indent)

(setq initial-scratch-message ""
      inhibit-startup-message t
      make-backup-files nil
      visible-bell t
      org-log-done t
      save-place t
      column-number-mode t
      make-backup-files nil)

(setq c-basic-indent 4
      c-basic-offset 4
      c-default-style "k&r"
      require-final-newline t)

(setq-default fill-column 80
	      indent-tabs-mode nil
	      tab-width 4)

(fset 'yes-or-no-p 'y-or-n-p)

(setq font-lock-maximum-decoration t)
(if (eq system-type 'darwin)
    (set-frame-font "Monaco-14")
  (set-frame-font "Consolas-12"))

(global-set-key (kbd "C-x v") 'split-window-right)
(global-set-key (kbd "C-x s") 'split-window-bottom)
(global-set-key (kbd "C-c C-s") 'magit-status)
(global-set-key (kbd "M-n") 'scroll-up-line)
(global-set-key (kbd "M-p") 'scroll-down-line)
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))

(global-whitespace-mode +1)

(ido-mode t)
(setq ido-enable-flex-matching t
      ido-case-fold t
      ido-confirm-unique-completion t
      ido-max-prospects 5)

(show-paren-mode 1)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(unless package-archive-contents 
  (package-refresh-contents))

(setq package-list
      '(zenburn-theme
        racket-mode
        clojure-mode
        evil
        cider
        smex
        magit
        paredit))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(load-theme 'zenburn t)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map ";" 'evil-ex)

(add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")
