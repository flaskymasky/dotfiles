(setq mode-line-modes
      (mapcar (lambda (elem)
                (pcase elem
                  (`(:propertize (,_ minor-mode-alist . ,_) . ,_)
                   "")
                  (t elem)))
              mode-line-modes))

(load-theme 'smart-mode-line-light t)
(display-time-mode 1)
;; (setq mode-line-format nil)

(setq global-lock-font t)

(set-cursor-color "#000000") 
(electric-pair-mode 1)
(show-paren-mode 1)

;; (require 'theme-magic)
;; (theme-magic-export-theme-mode 1)

(setq aw-background nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)


(setq indent-tabs-mode t)
(setq tab-width 4)


(setq dired-listing-switches "-allht")

;; (global-font-lock-mode 0)
