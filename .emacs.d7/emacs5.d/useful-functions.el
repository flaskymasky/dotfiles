

;; (defun qlines()
;;   (interactive)
;;   (insert "sed '/^ *$/d;s/.*/\"&\"/'"))



(defun qlines()
  (interactive)
  ;; (mark-whole-buffer)
  ;; (delete-region)
  (let ((command-sed "sed '/^ *$/d;s/.*/\"&\"/'"))
	(shell-command-on-region (point-min) (point-max) command-sed t t))
  ;; (execute-kbd-macro (read-kbd-macro "RET"))
  )
  ;; (insert "sed '/^ *$/d;s/.*/\"&\"/'")
  ;; (execute-kbd-macro (read-kbd-macro "RET")))








