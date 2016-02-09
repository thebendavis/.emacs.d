(load "pandoc-mode")

(add-hook 'pandoc-mode-hook 'pandoc-load-default-settings)
(add-hook 'markdown-mode-hook 'pandoc-mode)
