(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'package)
(add-to-list 'package-archives
	     '("MELPA" . "https://melpa.org/packages/") t)
(package-refresh-contents)

(load-library "theme")
(load-library "custom")
(load-library "font")
(load-library "lines")
(load-library "myorg")
(load-library "myphp")
(load-library "backup")
(load-library "myflycheck")
(load-library "mysnippets")
(load-library "mycompany")
(load-library "myclangformat")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(hipster))
 '(custom-safe-themes
   '("f144b9096708037ad68674f644a2a6b99d68b6c362fe7706d759d74afb1f526e" "eb25c68d3959c31d34021aa722d5ea1c53ea69714580b2b8c150592becf412cf" default))
 '(inhibit-startup-screen t)
 '(org-agenda-files
   '("~/org/holidays.org" "~/org/inventory.org" "~/org/master.org" "~/org/new_document.org"))
 '(org-startup-truncated nil)
 '(package-selected-packages
   '(pdf-tools openwith clang-format rtags org-alert phps-mode flycheck company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:foreground "green"))))
 '(font-lock-comment-face ((t (:foreground "green"))))
 '(link-visited ((t (:inherit link :foreground "dark red"))))
 '(shadow ((t (:foreground "red")))))
