;;; platformio-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "platformio-mode" "platformio-mode.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from platformio-mode.el

(autoload 'platformio-conditionally-enable "platformio-mode" "\
Enable `platformio-mode' only when a `platformio.ini' file is present in project root." nil nil)

(autoload 'platformio-mode "platformio-mode" "\
PlatformIO integration for Emacs.

If called interactively, enable Platformio mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "platformio-mode" '("platformio-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; platformio-mode-autoloads.el ends here
