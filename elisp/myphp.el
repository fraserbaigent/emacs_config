;;; myphp.el --- Summary:
;;; Commentary:
;;; Code:
(require 'php-mode)
(setq auto-mode-alist
      (append '(("\.php$" . php-mode)
		("\.module$" . php-mode))
	      auto-mode-alist))
(provide 'myphp)
;;; myphp.el ends here
