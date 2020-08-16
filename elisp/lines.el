;; edits 30/09/2018
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(put 'upcase-region 'disabled nil)
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2)))
;;(setq mo use-wheel-follow-mouse 't)
;;(add-to-list -load-path ".emacs.d/init.el")
;;(require 'cython-mode)

(setq mouse-wheel-progressive-speed nil)
(setq linum-format "%3d \u2502")
(global-linum-mode t)

(put 'downcase-region 'disabled nil)
(column-number-mode)

(setq visible-bell 1)
(setq default-tab-width 4)
(setq-default c-basic-offset 4)

(setq-default
 whitespace-line-column 80
 whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook #'whitespace-mode)
(add-hook 'org-mode-hook #'whitespace-mode)
