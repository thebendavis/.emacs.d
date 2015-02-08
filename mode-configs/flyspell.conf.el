(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)

;; use aspell instead of ispell
(setq ispell-program-name "aspell")
(setq ispell-list-command "list")

;; modes to flyspell check
(dolist (hook '(LaTeX-mode-hook
                markdown-mode-hook
                org-mode-hook
                text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))

;; modes to flyspell-prog check
(dolist (hook '(clojure-mode-hook
                emacs-lisp-mode-hook
                lisp-mode-hook))
  (add-hook hook (lambda () (flyspell-prog-mode))))
