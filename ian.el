


(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/Developer/Cocotron/1.0/Windows/i386/gcc-4.3.1/bin:/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/Developer/Cocotron/1.0/Windows/i386/gcc-4.3.1/bin" exec-path))
(setq buffer-display-table (make-display-table))
(aset buffer-display-table ?\^M [])

(add-to-list 'load-path (concat dotfiles-dir "vendor/emacs-color-theme-solarized"))
(require 'solarized-definitions)
(add-to-list 'custom-theme-load-path (concat dotfiles-dir "vendor/emacs-color-theme-solarized"))

(load-theme 'tango-dark)

(require 'sr-speedbar)
;; (sr-speedbar-open)

(load (concat dotfiles-dir "vendor/haskell-mode/haskell-site-file"))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'font-lock-mode)
(add-hook 'haskell-mode-hook 'yas/minor-mode)
;; (speedbar-add-supported-extension ".hs")

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/")
(require 'magit)
(require 'magit-svn)

(menu-bar-mode)

(global-set-key (kbd "C-x C-a") 'magit-status)
(global-set-key (kbd "C-x C-m") 'ns-toggle-fullscreen)
(global-set-key (kbd "C-x <C-return>") 'ns-toggle-fullscreen)
(global-set-key (kbd "C-x t") 'hippie-expand)
(setq browse-url-browser-function 'browse-url-default-macosx-browser)

(setq org-agenda-files "~/index.org")
