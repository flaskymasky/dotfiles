

(defun arduino-compile-and-upload ()
  (interactive)
  
  (let (( dir-full-name (file-name-directory buffer-file-name)))
  (message (file-name-directory buffer-file-name))
	  (let ((compile-and-upload "bash run.sh"))
	    (let ((default-directory dir-full-name))
	      (shell-command compile-and-upload)))))


(defun concatString (list)
  "A non-recursive function that concatenates a list of strings."
  (if (listp list)
      (let ((result ""))
        (dolist (item list)
          (if (stringp item)
              (setq result (concat result item))))
        result)))

(setq ino-buffer
      "void setup()
{

}

void loop()
{

}")

(defun arduino-create-new-sketch ()

  (interactive)

  (let ((sketch-name (read-string "file name: ")))
    (let ((pwd-path (concatString (list
				   (getenv "PWD")
				   "/"
				   )))
	  (default-directory (concat (getenv "PWD") "/")))

      (message "dir-name: %s" pwd-path)
      (cd pwd-path))

    (let ((a-create-project (concat "arduino-cli sketch new " sketch-name)))
      (let ((default-directory (concat (getenv "PWD") "/")))
	(shell-command a-create-project)

	(cd sketch-name))

      (let ((default-directory (concat (getenv "PWD") sketch-name))
	(switch-to-buffer (concat sketch-name ".ino"))
	(insert ino-buffer)))))

;; (message "path: %s" dir-full-name))

;; (arduino-create-new-sketch)

;; (concatString (list "hello" "my" "friend"))




