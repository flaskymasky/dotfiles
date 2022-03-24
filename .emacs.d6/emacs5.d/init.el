(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; (add-to-list 'load-path "~/.emacs.d/emacs-workspaces")
;; (load-file "~/.emacs.d/emacs-workspaces.el")

;; (use-package emacs-workspaces
;;   :straight (:type git :host github :repo "mclear-tools/emacs-workspaces")
;;   :commands (emacs-workspaces/create-workspace
;;              emacs-workspaces/create-new-project-and-workspace
;;              emacs-workspaces/open-existing-project-and-workspace
;;              emacs-workspaces/switch-workspace))


(quickrun-add-command "c++/c1z"
  '((:command . "g++")
    (:exec    . ("%c -std=c++1z %o -o %e %s -pedantic -Wall -Wextra"
		 "%e %a"))
    (:remove  . ("%e")))
  :default "c++")

;; (global-set-key (kbd "TAB") 'self-insert-command);
					
(defun my-c++-mode-hook ()
  (setq c-basic-offset 2)
  (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(setq visible-cursor nil)

;; (global-font-lock-mode 0)

(setq-default abbrev-mode t)

(setq abbrev-file-name             ;; tell emacs where to read abbrev
      "~/.emacs.d/abbrev_defs")    ;; definitions from...

;; (load "~/emacs.d/.abbrev_defs")

(require 'quickrun)

(quickrun-add-command "python"
  '((:command . "python3"))
  :override t)

  (setq save-abbrevs 'silent)        ;; save abbrevs when files are saved
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-to-list 'load-path "~/rainbow-delimiters/rainbow-delimiters.elc")
(require 'rainbow-delimiters)

;; (add-hook 'elisp-mode-hook 'rainbow-delimiters-mode)

(setq inferior-lisp-program "sbcl")

(require 'platformio-mode)

;; Enable ccls for all c++ files, and platformio-mode only
;; when needed (platformio.ini present in project root).
;; (add-hook 'c++-mode-hook (lambda ()
                           ;; (lsp-deferred)
                           ;; (platformio-conditionally-enable)))

(add-to-list 'load-path "~/.emacs.d/vendor/arduino-mode")
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

(setenv "GTAGSTHROUGH" "true")

;; (defun semantic-display-tag (&optional pt)
;;   "Display tag at point."
;;   (interactive "d")
;;   (unless pt (setq pt (point)))
;;   (let (analyze tag buf loc start pt)
;;     (when (and (setq analyze (semantic-analyze-current-context pt))
;;            (setq tag (semantic-analyze-interesting-tag analyze))
;;            (setq buf (semantic-tag-buffer tag))
;;            (setq start (semantic-tag-start tag)))
;;       (with-selected-window (display-buffer buf #'display-buffer-pop-up-window)
;;     (goto-char start)
;;     (recenter))
;;       )))

;; (global-set-key (kbd "C-c , d") #'semantic-display-tag)
;; (easy-menu-add-item cedet-menu-map '("Navigate Tags") ["Display Tag" semantic-display-tag (semantic-active-p)] 'semantic-complete-jump-local)


(load "~/.emacs.d/valgrind-config")
;; EXWM
;; (load "~/.emacs.d/exwm-my-config");

(setq TeX-save-query nil)

;; (load "~/.emacs.d/tex.el")
;;(load "~/.emacs.d/arduino.el")
;; PULSEAUDIO

;; USEFUL FUNCTION
(load "~/.emacs.d/useful-functions")
(load "~/.emacs.d/pulse-config");
;; COMPANY
(load "~/.emacs.d/company-config")
;; C PROGRAMMING
(load "~/.emacs.d/c-programming-config")
;; TRAMP
(load "~/.emacs.d/tramp-config")
;; SHELL
(load "~/.emacs.d/eshell-config")
;; LOOKS
(load "~/.emacs.d/emacs-looks")
;; WEBMODE
(load "~/.emacs.d/webmode-config")

(load "~/.emacs.d/global-abbrev")
;; C ABBREV
(load "~/.emacs.d/my-c-abbrev")

(load "~/.emacs.d/global-keys")

;; RANGER
;; (load "~/.emacs.d/ranger-my-config")

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
;; (load "~/.emacs.d/elisp-config.el")

;; BACKUP CONFIG
(load "~/.emacs.d/backup-config.el")

;; MY DIRED FEATURE
;; (load "~/.emacs.d/mydired")





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-clang-executable "/usr/bin/clang")
 '(custom-safe-themes
   '("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "94a94c957cf4a3f8db5f12a7b7e8f3e68f686d76ae8ed6b82bd09f6e6430a32c" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "b9a67b48d56c580cb300ce9c1ecc3b83aee953346a33e2a14b31e2e4a07ea8a6" "076ee9f2c64746aac7994b697eb7dbde23ac22988d41ef31b714fc6478fee224" "2b502f6e3bf0cba42fe7bf83a000f2d358a7020a7780a8682fcfed0c9dbffb5f" "3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "f08d2081f6783a5712cdce418f3962bd97a2054e8960609aad53f013a8b6f1cc" "f4c8f0b999a6407211a899401315a628e1a5ae2f408c04a33b14d7aa3ed86187" "f6d8afd9d1ad09b54de40e950763424d7be889ef7de3c4043336b228d1fde1c2" "39fe48be738ea23b0295cdf17c99054bb439a7d830248d7e6493c2110bfed6f8" "7beac4a68f03662b083c9c2d4f1d7f8e4be2b3d4b0d904350a9edf3cf7ce3d7f" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "ae4aa4bf7418af9a2a8a0e9d172895a2f25fe725790fed3f259bba53159a8264" "e0628ee6c594bc7a29bedc5c57f0f56f28c5b5deaa1bc60fc8bd4bb4106ebfda" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "16ab866312f1bd47d1304b303145f339eac46bbc8d655c9bfa423b957aa23cc9" "e208e45345b91e391fa66ce028e2b30a6aa82a37da8aa988c3f3c011a15baa22" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" default))
 '(ecb-analyse-buffer-sync-delay nil)
 '(ecb-layout-debug-mode nil)
 '(ecb-layout-name "left10")
 '(ecb-layout-window-sizes '(("")))
 '(ecb-maximize-ecb-window-after-selection t)
 '(ecb-options-version "2.50")
 '(ecb-source-path '(("/" "/")))
 '(ecb-stealthy-tasks-delay 0)
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 0.24)
 '(helm-completion-style 'emacs)
 '(package-selected-packages
   '(ecb maxima fzf slime arduino-mode platformio-mode cedit ivy exwm pulseaudio-control impatient-mode web-mode realgud octicons diminish multi-line smart-mode-line modern-cpp-font-lock perspective company ripgrep auto-sudoedit theme-magic x86-lookup quickrun mood-line helm-ag no-littering helm-projectile abyss-theme pdf-tools paredit elisp-slime-nav gruvbox-theme flycheck neotree dired-sidebar magit helm-swoop helm-gtags helm astyle format-all clang-format sr-speedbar xah-elisp-mode cssh ivy-hydra counsel zoom-window rainbow-mode rainbow-delimiters ggtags ace-window))
 '(zoom-window-mode-line-color "Yellow"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 1 :width normal :foundry "default" :family "default"))))
 '(avy-background-face ((t (:foreground "black"))))
 '(avy-lead-face-0 ((t nil)))
 '(avy-lead-face-1 ((t (:background "white" :foreground "black"))))
 '(avy-lead-face-2 ((t nil)))
 '(aw-background-face ((t (:foreground "black"))))
 '(company-preview ((t (:foreground "black"))))
 '(company-preview-search ((t (:inherit company-preview))))
 '(company-scrollbar-bg ((t (:background "black"))))
 '(company-template-field ((t (:foreground "black"))))
 '(company-tooltip ((t (:foreground "white"))))
 '(company-tooltip-selection ((t (:background "light blue"))))
 '(cursor ((t (:background "white"))))
 '(dired-ignored ((t (:inherit yellow))))
 '(dired-perm-write ((t (:inherit black))))
 '(ecb-analyse-face ((t (:inherit ecb-default-highlight-face))))
 '(ecb-default-highlight-face ((t nil)))
 '(eshell-ls-unreadable ((t (:foreground "black"))))
 '(fa-face-type-definition ((t (:inherit black :background "#CECEFF"))))
 '(ffap ((t nil)))
 '(file-name-shadow ((t (:inherit black))))
 '(fill-column-indicator ((t nil)))
 '(flycheck-info ((t (:underline (:color "yellow" :style wave)))))
 '(flycheck-warning ((t (:underline (:color "blue" :style wave)))))
 '(font-lock-builtin-face ((t nil)))
 '(font-lock-comment-delimiter-face ((t (:inherit green))))
 '(font-lock-comment-face ((t (:foreground "grey"))))
 '(font-lock-constant-face ((t (:foreground "blue"))))
 '(font-lock-doc-face ((t (:distant-foreground "black" :foreground "black"))))
 '(font-lock-function-name-face ((t (:foreground "light blue"))))
 '(font-lock-keyword-face ((t (:foreground "yellow"))))
 '(font-lock-preprocessor-face ((t nil)))
 '(font-lock-string-face ((t (:foreground "cyan"))))
 '(font-lock-type-face ((t (:foreground "white"))))
 '(font-lock-variable-name-face ((t nil)))
 '(font-lock-warning-face ((t nil)))
 '(helm-action ((t (:extend t :underline t))))
 '(helm-buffer-file ((t nil)))
 '(helm-candidate-number ((t (:extend t :background "cyan" :foreground "black"))))
 '(helm-command-active-mode ((t nil)))
 '(helm-delete-async-message ((t (:foreground "red"))))
 '(helm-eshell-prompts-buffer-name ((t (:foreground "blue"))))
 '(helm-ff-backup-file ((t nil)))
 '(helm-ff-directory ((t (:extend t :foreground "cyan"))))
 '(helm-ff-dirs ((t nil)))
 '(helm-ff-dotted-directory ((t (:extend t))))
 '(helm-ff-executable ((t (:extend t :foreground "white"))))
 '(helm-ff-file ((t nil)))
 '(helm-ff-file-extension ((t (:extend t :foreground "light blue"))))
 '(helm-ff-prefix ((t (:extend t))))
 '(helm-header ((t (:inherit black))))
 '(helm-minibuffer-prompt ((t nil)))
 '(helm-selection ((t (:extend t :background "red"))))
 '(helm-selection-line ((t (:inherit highlight :extend t :distant-foreground "yellow"))))
 '(helm-source-header ((t (:extend t :weight bold :height 1.3 :family "Sans Serif"))))
 '(helm-swoop-line-number-face ((t nil)))
 '(helm-swoop-target-line-block-face ((t (:background "light blue" :foreground "white"))))
 '(helm-swoop-target-line-face ((t (:foreground "blue"))))
 '(helm-swoop-target-word-face ((t (:foreground "blue"))))
 '(helm-visible-mark ((t (:extend t :background "yellow" :foreground "white"))))
 '(hide-ifdef-shadow ((t (:inherit black))))
 '(ido-virtual ((t nil)))
 '(info-index-match ((t (:background "cyan"))))
 '(isearch ((t (:background "white" :foreground "black"))))
 '(line-number ((t nil)))
 '(mode-line ((t (:background "black" :foreground "blue" :inverse-video nil))))
 '(mode-line-inactive ((t (:background "black" :foreground "white" :inverse-video nil))))
 '(package-status-built-in ((t nil)))
 '(rainbow-delimiters-base-error-face ((t (:inherit rainbow-delimiters-base-face :foreground "brown"))))
 '(rainbow-delimiters-depth-1-face ((t (:inherit rainbow-delimiters-base-face :foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "magenta"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "green"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit rainbow-delimiters-base-face :foreground "gold"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark violet"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "dark salmon"))))
 '(region ((t (:background "cyan" :distant-foreground "cyan"))))
 '(semantic-idle-symbol-highlight ((t (:background "rosy brown"))))
 '(shadow ((t nil)))
 '(term-color-white ((t (:background "white" :foreground "white"))))
 '(web-mode-html-attr-name-face ((t (:foreground "dark green"))))
 '(web-mode-html-tag-custom-face ((t (:inherit black))))
 '(web-mode-html-tag-face ((t (:foreground "black"))))
 '(window-divider ((t (:foreground "black"))))
 '(window-divider-first-pixel ((t (:foreground "black"))))
 '(window-divider-last-pixel ((t (:foreground "black")))))
(put 'magit-clean 'disabled nil)
(put 'upcase-region 'disabled nil)
