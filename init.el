;; ## start with my sane default settings
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'sane-defaults)


;; ## install Packages
(package-initialize)

;; latest stable Org mode
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
;; I use MELPA stable whenever possible
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;; GNU packages
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/"))
;; packages that live on MELPA (latest)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)


(setq package-pinned-packages nil)

;; *ORG*
(add-to-list 'package-pinned-packages '(org-plus-contrib . "org"))

;; *MELPA stable*
(mapcar (lambda (pkg) (add-to-list 'package-pinned-packages `(,pkg . "melpa-stable")))
        '(
          ace-jump-mode
          ace-window
          browse-kill-ring
          cider
          clojure-mode
          deft
          diminish
          emmet-mode
          expand-region
          find-file-in-project
          flycheck
          git-gutter
          haskell-mode
          magit
          markdown-mode
          multiple-cursors
          package+
          paredit
          rainbow-delimiters
          ))

;; *GNU*
(mapcar (lambda (pkg) (add-to-list 'package-pinned-packages `(,pkg . "gnu")))
        '(
          rainbow-mode
          ))

;; *MELPA (latest)*
(mapcar (lambda (pkg) (add-to-list 'package-pinned-packages `(,pkg . "melpa")))
        '(
          base16-theme
          beacon
          helm
          helm-ag
          helm-projectile
          material-theme
          moe-theme
          pandoc-mode
          projectile
          undo-tree
          volatile-highlights
          ws-butler
          yaml-mode
          ))

;; refresh package list (package-pinned-packages must be set before this point)
(package-refresh-contents)

;; install Package+ if it's not installed
(unless (package-installed-p 'package+)
  (package-install 'package+))

;; use the list of pinned packages to build the manifest.
;; this installs all packages, uninstalling those not in this list.
(apply 'package-manifest
       (mapcar 'car package-pinned-packages))


;; ## load all of my lisp functions in defuns, and all mode-settings
(defun load-elisp-in-dir
    (dirname)
  "Call load on all .el files in a given directory"
  (dolist (file (directory-files dirname t ".*\.el"))
    (when (file-regular-p file)
      (load file))))

(load-elisp-in-dir (expand-file-name "defuns"       user-emacs-directory))
(load-elisp-in-dir (expand-file-name "mode-configs" user-emacs-directory))


;; ## global key bindings
(require 'key-bindings)

;; ## UI configuration
(require 'appearance)


;; ## platform-specific settings

;; cygwin
(when (windowsp)
  (add-to-list 'exec-path "C:/cygwin64/bin"))

;; homebrew
(when (osxp)
  (add-to-list 'exec-path (concat (my-home-dir) "homebrew/bin")))

;; ## host-specific settings (in version control)
;;
;; in ~/.emacs.d/host-specific/hostname.goes.here.el
(defvar host-specific-settings-file
  (concat user-emacs-directory "host-specific/" (system-name) ".el"))
(when (file-readable-p host-specific-settings-file)
  (load host-specific-settings-file))

;; ## local settings (not in version control)
;;
;; in ~/.emacs.d/lisp/local-settings.el, if present
(when (locate-library "local-settings")
  (load-library "local-settings"))


;; ## emacs server
(require 'server)
(unless (server-running-p)
  (server-start))
