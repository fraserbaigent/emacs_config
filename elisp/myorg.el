;;; myorg.el --- Summary:
;;; Commentary:
;;; Code:
(require 'org)

;; Global custom keymappings for org
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;; OrgMods custom keymappings
(with-eval-after-load 'org
  '(define-key  org-mode-map "C-x C-g" 'org-sort o))

;; Mark timestamp when TODO moves to DONE
(setq org-log-done t)

;; Manually define org keywords and formatting
(setq org-todo-keywords
      '((sequence "TODO" "ONGOING" "SHELVED" "|""DONE" "SCRAPPED" ))
      )

(setq org-todo-keyword-faces '(("TODO" . (:foreground "red" :weight bold))
			       ("ONGOING" . (:foreground "orange"))
			       ("SHELVED" . (:foreground "magenta"))
			       ("DONE" . (:foreground "green" :weight bold))
			       ("SCRAPPED" . (:foreground "#2a702c" :weight bold :strike-through "red" )))
      )

;; Set the directory where we store the .org files for the agenda
(setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))

;; Show a moving window of 5 days in the future 3 in the past
(setq org-agenda-span 8
      org-agenda-start-on-weekday nil
      org-agenda-start-day "-3d")

;; Open all org files with evince
(require 'openwith)
(openwith-mode t)
(setq openwith-associations '(("\\.pdf\\'" "evince" (file))))
(add-to-list 'org-file-apps '("\\.pdf\\'" . evince))

(provide 'myorg)
;;; myorg.el ends here
