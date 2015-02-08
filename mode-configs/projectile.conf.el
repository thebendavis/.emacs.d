;; enable projectile globally
(projectile-global-mode)

(custom-set-variables
 '(projectile-mode-line '(:eval (format " P[%s]" (projectile-project-name)))))
