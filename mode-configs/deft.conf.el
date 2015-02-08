(setq deft-extension "text"
      deft-use-filename-as-title t
      deft-text-mode 'markdown-mode
      deft-auto-save-interval 10)

(setq deft-directory
      (cond ((windowsp) (expand-file-name "My Dropbox/apps/deft/" (my-home-dir)))
            ((cygwinp)  (expand-file-name "My Dropbox/apps/deft/" (my-home-dir)))
            (t          (expand-file-name "Dropbox/apps/deft/"    (my-home-dir)))))
