;;; package --- summary:
;;; Commentary:
;;; Code:
(require 'package)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)

(load-library "theme")
(load-library "custom")
(load-library "font")
(load-library "lines")
(load-library "myorg")
(load-library "myphp")
(load-library "backup")
(load-library "myflycheck")
(provide 'init)
;;; init.el ends here
