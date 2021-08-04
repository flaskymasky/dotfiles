
;
;
; Code:

(defun maximus-to-left ()
  (interactive)
  (enlarge-window-horizontally nil)
  (enlarge-window-horizontally nil)
  (enlarge-window-horizontally nil)
  (enlarge-window-horizontally nil)
  )

(defun maximus-to-right ()
  (interactive)
  (shrink-window-horizontally nil)
  (shrink-window-horizontally nil)
  (shrink-window-horizontally nil)
  (shrink-window-horizontally nil)
  )


(provide 'resize-window-to-left)
;;; resize-window-to-left.el ends here
