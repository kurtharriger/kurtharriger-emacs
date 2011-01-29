
;; Windowed
(when window-system
  (require 'alpha)
  (require 'color-theme)
  (require 'color-theme-ir-black)
  (modify-frame-parameters (selected-frame) '((alpha . 85)))
  (color-theme-ir-black)
  (server-start))

