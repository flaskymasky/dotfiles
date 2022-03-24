

(defun max-dired-cool ()
  (interactive)
  (split-window-horizontally)
  (ace-window 1)
  (dired-view-file)


(global-set-key (kbd "C-c C-l") 'max-dired-cool)
