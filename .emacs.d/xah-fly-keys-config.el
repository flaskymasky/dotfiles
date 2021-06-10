;; USE 
(require 'xah-fly-keys)
;; specify a layout
(xah-fly-keys-set-layout "qwerty")
(xah-fly-keys 1)
(define-key xah-fly-c-keymap (kbd "e") 'helm-find-files)

 ;; SCROLL IN PDF ( XAH )
 (with-eval-after-load 'pdf-view
   (define-key pdf-view-mode-map [remap next-line] #'pdf-view-next-line-or-next-page)
   (define-key pdf-view-mode-map [remap previous-line] #'pdf-view-previous-line-or-previous-page))

