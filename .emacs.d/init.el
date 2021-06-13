(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(electric-pair-mode 1)
(show-paren-mode 1)
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 4))

;; string-trim error fix
(require 'subr-x)
;; CLANG-FORMAT
(load "~/.emacs.d/clang-format-config")

;; XAH-FLY-KEYS
(load "~/.emacs.d/xah-fly-keys-config")

;; HELM
(load "~/.emacs.d/helm-my-config")

;; HELM-GTAGS
;; (load "~/.emacs.d/helm-gtags-config")

;; IVY
;; (load "~/.emacs.d/ivy-config")

;; ZOOM-WINDOW
(load "~/.emacs.d/zoom-window-config")

;; GTAGS
(load "~/.emacs.d/gtags-config")

;; HELM-SWOOP
(load "~/.emacs.d/helm-swoop-config")

;; FLYCHECKER
(load "~/.emacs.d/flycheck-config");

;; RENAME FILE
(load "~/.emacs.d/rename-file-config.el");

;; PROJECTILE
(load "~/.emacs.d/projectile-config.el")

;; NO-LITTERING ( auto save )
(load "~/.emacs.d/no-littering-config.el")

;; ELISP-CONFIG
(load "~/.emacs.d/elisp-config.el")

;; BACKUP CONFIG
(load "~/.emacs.d/backup-config.el")

;; SETTINGS
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(global-set-key [f7] 'neotree-toggle)
(setq-default tab-width 8)
(setq tab-width 8)
(require 'helm-eshell)

(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))


;; SKIP BORING FILES
(setq helm-ff-skip-boring-files t)
(dolist (regexp '("\\`\\*direnv" "\\`\\*straight" "\\`\\*xref" "\\#+"))
  (cl-pushnew regexp helm-boring-buffer-regexp-list))

(define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)

(setq aw-background nil)

;; (set-face-attribute 'default nil :family 'BiWidth)
;; (set-face-attribute 'fixed-pitch nil :family 'unspecified)
;(set-face-attribute 'default nil :height 140)
(global-set-key (kbd "M-o") 'ace-window)


(fa-config-default)
(set-default 'semantic-case-fold t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" default)))
 '(package-selected-packages
   (quote
    (helm-ag no-littering helm-projectile solarized-theme abyss-theme pdf-tools paredit elisp-slime-nav badwolf-theme fantom-theme gruvbox-theme flycheck ample-theme ample-zen-theme zenburn-theme neotree dired-sidebar magit helm-swoop helm-gtags helm astyle format-all clang-format sr-speedbar function-args xah-elisp-mode cssh ivy-hydra counsel zoom-window rainbow-mode rainbow-delimiters ggtags ace-window)))
 '(zoom-window-mode-line-color "Yellow"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 135 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(font-lock-comment-face ((t (:foreground "gray58"))))
 '(region ((t (:background "cyan" :distant-foreground "gtk_selection_fg_color")))))
(put 'magit-clean 'disabled nil)
