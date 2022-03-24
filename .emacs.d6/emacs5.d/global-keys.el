

(global-set-key (kbd "C-c l") 'quickrun)
(global-set-key (kbd "C-c j") 'replace-string)
(global-set-key (kbd "C-c k") 'helm-projectile-grep)
(global-set-key (kbd "C-x p") 'arduino-compile-and-upload)
(global-set-key (kbd "C-c m") 'fzf)
(global-set-key (kbd "C-c v") 'qlines)
;; (global-set-key (kbd "C-c C-n") 'tex-fast-save-and-load)


;; MOVE 45 LINES FORWARD / BACKWARD

(global-set-key (kbd "C-c o") (lambda () (interactive) (forward-line 45)))
(global-set-key (kbd "C-c u") (lambda () (interactive) (forward-line -45)))


;; COMPANY

(global-set-key (kbd "C-c C-j") 'company-complete)


;; ACE

(global-set-key (kbd "M-o") 'ace-window)

;; DIRED SIDEBAR

(global-set-key [f7] 'dired-sidebar-toggle-with-current-directory)


;; RELOAD INIT

(defun reload-init()
  (interactive)
  (load-file "~/.emacs.d/init.el"))


(global-set-key (kbd "C-c TAB") 'reload-init)





