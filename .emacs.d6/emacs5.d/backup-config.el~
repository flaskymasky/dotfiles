
(setq make-backup-files nil)



(setq backup-directory-alist '(("" . "~/.emacs.d/emacs_backup"))
backup-by-copying t
version-control t
kept-old-versions 2
kept-new-versions 20
delete-old-versions t)
(setq tramp-backup-directory-alist backup-directory-alist)
(setq auto-save-file-name-transforms nil)
; SEE TAGS IN BUFFER
(fa-config-default)
(set-default 'semantic-case-fold t)

;; dont show backups
(defadvice completion--file-name-table (after 
                                        ignoring-backups-f-n-completion 
                                        activate)
  "Filter out results when they match `completion-ignored-extensions'."
  (let ((res ad-return-value))
(if (and (listp res)
     (stringp (car res))
     (cdr res))                 ; length > 1, don't ignore sole match
    (setq ad-return-value
	  (completion-pcm--filename-try-filter res)))))
;; dont create lock files
(setq create-lockfiles nil)
;; disable autosave
;; (setq auto-save-default nil)
(setq auto-save-default nil)

