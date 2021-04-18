;;; myorg.el --- Summary:
;;; Commentary:
;;; Code:
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-todo-keywords
      '((sequence "TODO" "ONGOING" "SHELVED" "|""DONE" "SCRAPPED" ))
      )

(setq org-todo-keyword-faces '(("TODO" . (:foreground "red" :weight bold :strikethrough "green" ))
			       ("ONGOING" . (:foreground "orange"))
			       ("SHELVED" . (:foreground "magenta"))
			       ("DONE" . (:foreground "green" :weight bold))
			       ("SCRAPPED" . (:foreground "#2a702c" :weight bold)))
      )

(setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))

(require 'openwith)
(openwith-mode t)
(setq openwith-associations '(("\\.pdf\\'" "evince" (file))))
(add-to-list 'org-file-apps '("\\.pdf\\'" . evince))

(provide 'myorg)
;;; myorg.el ends here
