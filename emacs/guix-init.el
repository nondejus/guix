(require 'guix-autoloads)

(defcustom guix-package-enable-at-startup t
  "If non-nil, activate Emacs packages installed in a user profile.
Set this variable to nil before requiring `guix-init' file to
avoid loading autoloads of Emacs packages installed in
`guix-user-profile'."
  :type 'boolean
  :group 'guix)

(when guix-package-enable-at-startup
  (require 'guix-emacs)
  (guix-emacs-load-autoloads 'all))

(provide 'guix-init)
