(require 'php-mode)
(setq auto-mode-alist
      (append '(("\.php$" . php-mode)
		("\.module$" . php-mode))
	      auto-mode-alist))
