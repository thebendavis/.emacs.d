(global-git-gutter-mode t)
(global-undo-tree-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; Add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'volatile-highlights)
(volatile-highlights-mode t)

;; clean up whitespace
(require 'ws-butler)
;;(add-hook 'before-save-hook 'cleanup-buffer-safe)
(ws-butler-global-mode)

;; when I visit a point, start where I last left off.
(require 'saveplace)
(setq-default save-place t)

;; always enable semantic mode
(semantic-mode 1)

;; enable shift + arrow keys to change windows, when supported
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; beacon: highlight the cursor whenever the window scrolls
(beacon-mode 1)

;; which-key: display key bindings for in-progress command
(require 'which-key)
(which-key-mode)
