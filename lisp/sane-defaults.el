;; seed the random-number generator
(random t)

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-regular-p custom-file)
  (load custom-file))

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))
(setq save-place-file (concat user-emacs-directory "places"))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Reload the TAGS file without prompting
(setq tags-revert-without-query 1)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Transparently open compressed files
(auto-compression-mode t)

;; Enable syntax highlighting for older Emacsen that have it off
(global-font-lock-mode t)

;; just 'y' or 'n' is fine
(defalias 'yes-or-no-p 'y-or-n-p)

;; UTF-8 please
(setq locale-coding-system   'utf-8)
(set-terminal-coding-system  'utf-8)
(set-keyboard-coding-system  'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system        'utf-8)

;; show active region
(transient-mark-mode 1)
(make-variable-buffer-local 'transient-mark-mode)
(put 'transient-mark-mode 'permanent-local t)
(setq-default transient-mark-mode t)

;; remove text in active region if inserting text
(delete-selection-mode 1)

;; make M-v always exactly undo C-v
(setq scroll-preserve-screen-position 'always)

;; lines should be 80 characters wide
(setq fill-column 80)

;; save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)
(setq recentf-max-saved-items 100)

;; never insert tabs
(setq-default indent-tabs-mode nil)

;; show empty lines after buffer end
(setq-default indicate-empty-lines t)

;; single space between sentences
(setq-default sentence-end-double-space nil)

(setq save-interprogram-paste-before-kill t
      apropos-do-all t
      require-final-newline t
      visible-bell t
      ediff-window-setup-function 'ediff-setup-windows-plain)

(provide 'sane-defaults)
