


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
(sr-speedbar-open)

(load (concat dotfiles-dir "vendor/haskell-mode/haskell-site-file"))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'font-lock-mode)

(menu-bar-mode)
