;;; cssh-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "cssh" "cssh.el" (0 0 0 0))
;;; Generated autoloads from cssh.el

(autoload 'cssh-turn-on-ibuffer-binding "cssh" "\


\(fn)" nil nil)

(autoload 'cssh-term-remote-open "cssh" "\
Prompt for a remote host to connect to, and open a term there.

\(fn)" t nil)

(autoload 'cssh-regexp-host-start "cssh" "\
start ClusterSSH for all mathing hosts in  known_hosts

\(fn &optional CSSH-BUFFER-NAME)" t nil)

(autoload 'cssh-dired-find-file "cssh" "\
In dired, have cssh connect to hosts in the `dsh' configuration file.

\(fn)" t nil)

(autoload 'cssh-mode "cssh" "\
A major mode for controlling multiple terms at once.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cssh" '("cssh-" "split-horizontally-first")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; cssh-autoloads.el ends here
