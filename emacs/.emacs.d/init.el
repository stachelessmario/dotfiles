(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'doom-themes)
  (package-refresh-contents)
  (package-install 'doom-themes))
;;;;

(if (daemonp)
    (setq use-package-always-demand t))

(when (file-readable-p "~/.emacs.d/config.org")
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (doom-molokai)))
 '(custom-safe-themes
   (quote
    ("0cd56f8cd78d12fc6ead32915e1c4963ba2039890700458c13e12038ec40f6f5" "3a3de615f80a0e8706208f0a71bbcc7cc3816988f971b6d237223b6731f91605" default)))
 '(package-selected-packages
   (quote
    (elpy browse-kill-ring powerline doom-themes evil-numbers org-bullets olivetti sudo-edit rainbow-delimiters smex which-key evil-collection evil use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
