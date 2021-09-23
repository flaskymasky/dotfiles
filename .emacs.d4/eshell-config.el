(defun eshell/clear ()
  "Clear `eshell' buffer, comint-style."
  (interactive)
  (let ((input (eshell-get-old-input)))
    (eshell/clear-scrollback)
    (eshell-emit-prompt)
    (insert input)))

(require 'helm-eshell)

(setq helm-show-completion-display-function #'helm-show-completion-default-display-function)
(add-hook 'eshell-mode-hook
#'(lambda ()
              (define-key eshell-mode-map (kbd "M-l")  'helm-eshell-history)))



(setq helm-ff-skip-boring-files t)
(dolist (regexp '("\\`\\*direnv" "\\`\\*straight" "\\`\\*xref" "\\#+"))
  (cl-pushnew regexp helm-boring-buffer-regexp-list))

(define-key shell-mode-map (kbd "C-c C-l") 'helm-comint-input-ring)
