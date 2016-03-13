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
(require 'grep)
(global-set-key (kbd "C-M-s") 'helm-projectile-ag)

;; browse the kill ring
(global-set-key (kbd "C-x C-y") 'helm-show-kill-ring)

;; TAB does the default action, C-z chooses from list (swapped from default)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "TAB")   'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z")   'helm-select-action)

;; no need to indicate Helm minor mode
(eval-after-load "helm" '(diminish 'helm-mode))
