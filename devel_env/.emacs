(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq inhibit-splash-screen t)
(setq-default indent-tabs-mode nil)

;; current buffer name in title bar
(setq frame-title-format "%b")


;; Set font - essential for Ubuntu 10.04
(set-default-font "Monospace-18")
;;(set-default-font "-apple-Consolas-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1")
;; Set font for all frames
;;(set-face-attribute 'default nil :font "Monospace-11")
;;add-to-list 'default-frame-alist '(font . "Monospace-11"))
;;(add-to-list 'initial-frame-alist '(font . "Monospace-11"))


; default size and color options for all frames.
; depends on font set above
(setq default-frame-alist
 '(
    (width             . 80)
    (height            . 40)
  )
)


; Temporary files cluttering up the space are annoying.  Here's how we
; can deal with them -- create a directory in your home directory, and
; save to there instead!  No more random ~ files.
(defvar user-temporary-file-directory
  "~/.emacs-autosaves/")
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))
;;(setq make-backup-files nil) ;; dont create backup files



(setq-default cursor-type 'bar)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "#ff0000" :width condensed))))
 '(mouse ((t (:background "#000000" :width condensed)))))


;; Start in matlab mode
(setq auto-mode-alist
      (cons '("\\.m$" . matlab-mode) auto-mode-alist))

;; Cuda in c mode
(setq auto-mode-alist
      (cons '("\\.cu$" . c-mode) auto-mode-alist))
