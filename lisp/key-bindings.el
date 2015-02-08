;; C-w is backspace word
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x M-w") 'kill-region)

;; smarter expansion
(global-set-key (kbd "M-/") 'hippie-expand)

;; make regex search the default, add meta for normal search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; ace jump mode
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

;; expand region instead of zap-to-char
(global-set-key (kbd "M-z") 'er/expand-region)

;; put zap somewhere else, and use zap-up-to-char instead
(autoload 'zap-up-to-char "misc"
  "Kill up to, but not including ARGth occurrence of CHAR." t)
(global-set-key (kbd "C-c M-z") 'zap-up-to-char)

;; multiple-cursors
(global-set-key (kbd "C-c m a") 'mc/edit-lines)         ;; put a cursor on each line of selected region
(global-set-key (kbd "C-c m e") 'mc/mark-all-like-this) ;; mark each matching region in buffer
(global-set-key (kbd "C-c m r") 'mc/mark-all-in-region) ;; mark each in region, prompts for search string

;; flyspell check previously highlighted word
(global-set-key (kbd "C-c j") 'flyspell-check-previous-highlighted-word)

;; Easily evaluate lisp expressions
(global-set-key (kbd "C-c v") 'eval-buffer)
(global-set-key (kbd "C-c C-e") 'eval-and-replace)

;; ace-window for choosing windows. prefix with C-u C-u to close windows
(global-set-key (kbd "C-x o") 'ace-window)

;; closing frames
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

;; indent and clean up the whole file
(global-set-key (kbd "C-z") 'cleanup-buffer)
;; don't suspend so easily
(global-set-key (kbd "C-x M-z") 'suspend-frame)

;; magit from anywhere
(global-set-key (kbd "C-x g") 'magit-status)

;; function keys
(global-set-key [f8] 'deft)

(provide 'key-bindings)
