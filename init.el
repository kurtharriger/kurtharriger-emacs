;; init.el

 (let ((default-directory "~/.emacs.d/site-lisp/"))
      (normal-top-level-add-to-load-path '("."))
      (normal-top-level-add-subdirs-to-load-path))

;; Windowed
(modify-frame-parameters (selected-frame) '((alpha . 85)))
(require 'color-theme)
(require 'alpha)

;; MouseTerm
(unless window-system
  (xterm-mouse-mode 1)
  (global-set-key [mouse-4] '(lambda ()
                               (interactive)
                               (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                               (interactive)
                               (scroll-up 1))))



;; coffee-mode
;; (add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)


(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

 (add-to-list 'load-path "~/.emacs.d/vendor/mozrepl/chrome/content")
  (autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)

  (add-hook 'js2-mode-hook 'js2-custom-setup)
  (defun js2-custom-setup ()
    (moz-minor-mode 1))





;; ECB
;; (add-to-list 'load-path "~/.emacs.d/vendor/ecb-snap")

(require 'ecb)
(require 'ecb-autoloads)


;; swank-js
;;(add-to-list 'load-path "~/.emacs.d/vendor/slime")
;;(add-to-list 'load-path "~/.emacs.d/vendor/swank-js")



;;  (require 'slime)
;;  (slime-setup '(slime-repl slime-js))

;;  (global-set-key [f5] 'slime-js-reload)
;;  (add-hook 'js2-mode-hook
;;            (lambda ()
;;              (slime-js-minor-mode 1)))

;; (add-hook 'css-mode-hook
;;           (lambda ()
;;             (define-key css-mode-map "\M-\C-x" 'slime-js-refresh-css)))

;; project-mode
;; (add-to-list 'load-path "~/.emacs.d/vendor/emacs-project-mode")
;; (autoload 'project-mode "project-mode" "Project Mode" t)
;;  (project-load-all) ; Loads all saved projects. Recommended, but not required.


;; (add-to-list 'load-path "~/.emacs.d/vendor/moz-reload-mode")
;; (require 'moz-reload-mode)

