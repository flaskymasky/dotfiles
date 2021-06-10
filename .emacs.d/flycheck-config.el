
(add-hook 'c-mode-hook #'global-flycheck-mode)

(setq flycheck-check-syntax-automatically '(mode-enabled save))
