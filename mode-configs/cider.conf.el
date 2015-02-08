(require 'cider)

;; enable eldoc
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; hide *nrepl-connection* and *nrepl-server* buffers in switch-to-buffer (will always be visible in list-buffers)
(setq nrepl-hide-special-buffers t)

;; make it nicer to work with Java CamelCase identifiers
(add-hook 'cider-repl-mode-hook 'subword-mode)

;; also show nREPL's port
(setq nrepl-buffer-name-show-port t)
