;; haskell-mode
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

;; helm-ghc
(add-hook 'haskell-mode-hook
          (lambda () (define-key haskell-mode-map (kbd "C-c ?") 'helm-ghc-errors)))

;; mode for ghc-mod is called ghc on MELPA.
;; install ghc-mod binaries from hackage
(autoload 'ghc-init  "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
