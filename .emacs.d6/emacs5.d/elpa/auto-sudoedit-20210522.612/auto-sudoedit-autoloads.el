;;; auto-sudoedit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "auto-sudoedit" "auto-sudoedit.el" (0 0 0 0))
;;; Generated autoloads from auto-sudoedit.el

(autoload 'auto-sudoedit-mode "auto-sudoedit" "\
automatic do sudo by tramp when need root file

If called interactively, enable Auto-Sudoedit mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "auto-sudoedit" '("auto-sudoedit")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-sudoedit-autoloads.el ends here
