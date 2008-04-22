;;; skels.el --- Setup file skeletons

(add-to-list 'load-path (expand-file-name "skels" emacs-packages-dir))

(load "init-skel")

;; set configuration variables
(setq jao-company-name "")
(setq jao-copyright-file "")
(setq jao-cpp-root-namespace "")

(jao-skel-lisa-activate)

;;; skels.el ends here
