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
      column-number-mode)

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

(global-set-key (kbd "C-x 0") 'beginning-of-line)
(global-set-key (kbd "C-x v") 'split-window-right)
(global-set-key (kbd "C-x s") 'split-window-bottom)
