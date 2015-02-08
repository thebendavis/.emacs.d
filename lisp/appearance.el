(setq visible-bell t
      font-lock-maximum-decoration t
      color-theme-is-global t)

;; always display line and column numbers
(setq line-number-mode   t
      column-number-mode t)

;; no menu, tool, or scroll bars
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(show-paren-mode t)

;; highlight current line
(global-hl-line-mode t)

;; set font
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-12"))


;; ## set the color theme
;;(load-theme 'tsdh-dark)
(require 'moe-theme)
(moe-dark)

;; manually set highlight-current-line background color
;;(set-face-background hl-line-face "#1c1c1c")

(provide 'appearance)
