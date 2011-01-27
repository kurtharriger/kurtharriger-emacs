;; kurtharriger.el

(let ((default-directory "~/.emacs.d/kurtharriger/"))
  (normal-top-level-add-to-load-path '("."))
        (normal-top-level-add-subdirs-to-load-path))

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)  
