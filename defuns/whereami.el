(defun gnulinuxp ()
  "Returns t if the system is a GNU/Linux machine, otherwise nil"
  (string-equal system-type "gnu/linux"))

(defun osxp ()
  "Returns t if the system is a Mac OS X machine, otherwise nil"
  (string-equal system-type "darwin"))

(defun cygwinp ()
  "Returns t if Emacs is running inside of Cygwin on Windows, otherwise nil"
  (string-equal system-type "cygwin"))

(defun windowsp ()
  "Returns t if the system is a native Emacs for Windows, otherwise nil"
  (string-equal system-type "windows-nt"))

(defun my-home-dir ()
  "Returns the directory name of the current user's home directory"
  (cond ((windowsp) (expand-file-name user-login-name "C:/Users/"))
        ((cygwinp)  (expand-file-name user-login-name "/cygdrive/c/Users/"))
        (t          (expand-file-name "~/"))))
