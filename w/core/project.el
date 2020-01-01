(use-package
  projectile
  :ensure t
  :defer nil
  :init
  (bind-to-map help-map "k" 'describe-key "key-help")
  (defalias 'project 'projectile-command-map)
  (evil-leader/set-key "p" 'project)
  :config
  ;;
  (projectile-mode +1)
  (counsel-projectile-mode t))

(use-package
  counsel-projectile
  :ensure t
  :after (counsel projectile)
  :config (counsel-projectile-mode t))

(use-package
  magit
  :ensure t
  :defer t
  :init
(bind-to-map project-map "g" 'magit-status "git")
)

(provide 'core/project)
