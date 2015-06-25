(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode 1)

(setq helm-M-x-fuzzy-match t
      helm-apropos-fuzzy-match t
      helm-buffers-fuzzy-matching t
      helm-imenu-fuzzy-match t
      helm-locate-fuzzy-match t
      helm-recentf-fuzzy-match t
      helm-recentf-fuzzy-matching t
      helm-semantic-fuzzy-match t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;; old M-x

;; find files
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x f") 'helm-projectile)

;; change buffers
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

;; imenu shortcut
(global-set-key (kbd "C-x i") 'helm-semantic-or-imenu)

;; fast project-wide search via ag (the silver searcher)
(global-set-key (kbd "C-M-s") 'helm-projectile-ag)

;; Browse the kill ring
(global-set-key (kbd "C-x C-y") 'helm-show-kill-ring)
