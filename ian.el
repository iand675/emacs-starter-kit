


(when (equal system-type 'darwin)
  (setenv "PATH" (concat "/usr/texbin:/Developer/Cocotron/1.0/Windows/i386/gcc-4.3.1/bin:/opt/local/bin:/usr/local/bin:" (getenv "PATH")))
  (push "/opt/local/bin" exec-path)
  (push "/Developer/Cocotron/1.0/Windows/i386/gcc-4.3.1/bin" exec-path))

(add-to-list 'load-path (concat dotfiles-dir "vendor/emacs-color-theme-solarized"))
(require 'solarized-definitions)
(add-to-list 'custom-theme-load-path (concat dotfiles-dir "vendor/emacs-color-theme-solarized"))
;; (load-theme 'solarized-dark)
(load-theme 'tango-dark)
;; (load-theme 'solarized)
(require 'sr-speedbar)
;; (sr-speedbar-open)

(load (concat dotfiles-dir "vendor/haskell-mode/haskell-site-file"))
(load (concat dotfiles-dir "vendor/haskell-mode/haskell-font-lock"))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'font-lock-mode)
(add-hook 'haskell-mode-hook 'yas/minor-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)
(setq haskell-program-name "ghci")
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

(setq org-agenda-files '("~/org"))
(defun org-dblock-write:image(params)
  (let ((file (plist-get params :file)))
    (clear-image-cache file)
    (insert-image (create-image file))))

(set-fontset-font "fontset-default"
                  'greek-iso8859-7
                  '("DejaVu Sans Mono" . "iso10646-1"))
(set-fontset-font "fontset-default"
                  'japanese-jisx0208
                  '("Hiragino Kaku Gothic Pro" . "iso10646-1"))
(set-fontset-font "fontset-default"
                  'symbol
                  '("DejaVu Sans Mono" . "iso10646-1"))
;; かたな 刀
;; lambda

;;(global-ede-mode t)
;;(require 'semantic/sb)
;;(semantic-mode t)
;;(ede-enable-generic-projects)

;;(setq flymake-buildfile-dirs '("./build/" "../build/" "../build/gadgets/" "../build/memoryman/" "../build/pwrtool/"))


;;(flymake-find-buildfile "Makefile" "~/Code/Windmil/Engine/gadgets")
;;(file-name-directory "~/Code/Windmil/Engine/gadgets/")


(load "~/.ercpass")


(add-to-list 'load-path (concat dotfiles-dir "vendor/"))
(require 'smooth-scroll)
(smooth-scroll-mode t)


;; Set to the location of your Org files on your local system
(setq org-directory "~/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")

(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq indent-line-function 'insert-tab)
