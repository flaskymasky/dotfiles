
;; (defun valgrind-run()
;;   (interactive)
;;   (let ((command (concat "valgrind " (file-name-sans-extension (buffer-file-name)))))
;;     (shell-command command)))



(defun valgrind-run()
  (interactive)
  (let ((compile-command (concat "make " (file-name-sans-extension (buffer-file-name)))))
	(shell-command compile-command)) 
  (let ((command (concat "valgrind --leak-check=full " (file-name-sans-extension (buffer-file-name)))))
	(shell-command command)))

