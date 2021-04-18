;;; mycompany.el --- summary:
;;; Commentary:
;;; Code:
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :custom
  (company-tooltip-limit 5) ; show 5 candidates at one time
  (company-idle-delay 0.1) ;; delay (in seconds) when candidates are shown
  (company-minimum-prefix-length 3) ;; show completions after 3 chars
  (company-selection-wrap-around t) ;; wrap around selection
  (company-require-match 'never) ;; dont need to pick a choice
  )
;;(require 'rtags)
;;(require 'popup)
;;(require 'rtags-ac)
;;(setq rtags-completions-enabled t)
;;(rtags-enable-standard-keybindings c-mode-base-map)
;;(add-hook 'c++-mode-hook
;;          (lambda ()
;;            (setq ac-sources '(ac-source-rtags)
;;)))
;;(use-package company-jedi
;;  :init (add-to-list 'company-backends 'company-jedi))
;;
;;(use-package python
;;  :hook ((python-mode . jedi:setup)))

;;; mycompany.el ends here
