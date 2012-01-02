;;; globals.el --- Setup general environment

;; Initialize Emacs server
;(server-start)

;; User variables
(setq user-full-name "Aleix Conchillo Flaque")
(setq user-mail-address "aconchillo@ieec.cat")

;; Setup file backups directory
(add-to-list 'backup-directory-alist
             `("." . ,(expand-file-name "~/.emacs.d/backups/")))

;; Setup fink info directories
;;(require 'info)
;;(setq Info-directory-list (cons (expand-file-name "/sw/share/info") Info-directory-list))

;; Ido
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; Battery
;(display-battery-mode 1)

;; Show time
;; (display-time)
(setq display-time-24hr-format t)

;; Column number
(column-number-mode 1)

;; Disables menu bar
(menu-bar-mode -1)

;; Disables tool bar
(if window-system
    (tool-bar-mode -1))

;; Disable blinking cursor
(blink-cursor-mode -1)

;; Disable sound
(setq visible-bell t)

;; Show closing parenthesis
(show-paren-mode 1)

;; Enable syntax-highlighting.
(require 'font-lock)
(global-font-lock-mode 1)
(setq font-lock-maximum-size nil)

;; Settings for any frame
(setq default-frame-alist
      '((vertical-scroll-bars . nil)
        (horizontal-scroll-bars . nil)
        (top . 35)
        (left . 20)
        (width . 135)
        (height . 42)))

;; Speedbar
(setq speedbar-use-images nil)
(setq speedbar-frame-parameters
      (quote
       ((minibuffer)
	(width . 35)
	(border-width . 0)
	(menu-bar-lines . 0)
	(tool-bar-lines . 0)
	(unsplittable . t)
	(left-fringe . 0))))

;; Switch buffer improved
;(require 'iswitchb)
;(iswitchb-mode 1)

;; Secure Remote Editing
(require 'tramp)
(setq tramp-default-method "scp")

;;; globals.el ends here
