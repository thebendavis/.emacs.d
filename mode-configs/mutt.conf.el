;; configurations for composing emails for mutt in emacs

;; mutt files are named like this:
(setq my-mutt-file-name-regex "\\.mutt/temp/mutt")

;; enable text mode when composing an email message for mutt.
(add-to-list 'auto-mode-alist `(,my-mutt-file-name-regex . text-mode))

;; enable auto-fill-mode for mutt messages
(add-hook 'text-mode-hook (lambda ()
                            (if (and (buffer-file-name)
                                     (string-match my-mutt-file-name-regex (buffer-file-name)))
                                (auto-fill-mode 1))))
