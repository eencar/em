(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(hc-zenburn))
 '(custom-safe-themes
   '("a37d20710ab581792b7c9f8a075fcbb775d4ffa6c8bce9137c84951b1b453016" "f74e8d46790f3e07fbb4a2c5dafe2ade0d8f5abc9c203cd1c29c7d5110a85230" default))
 '(package-selected-packages
   '(zenburn-theme vterm verilog-ext use-package tree-sitter-langs smex ranger org-roam-ui multiple-cursors multi-term move-text magit lsp-ui ido-completing-read+ helm-themes helm hc-zenburn-theme goto-chg company-quickhelp company-flx))
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(verilog-align-comment-distance 0)
 '(verilog-align-decl-expr-comments nil)
 '(verilog-align-typedef-regexp nil)
 '(verilog-align-typedef-words '(""))
 '(verilog-auto-lineup 'ignore)
 '(verilog-auto-newline nil)
 '(verilog-indent-declaration-macros t)
 '(verilog-indent-level 2)
 '(verilog-indent-level-behavioral 2)
 '(verilog-indent-level-declaration 2)
 '(verilog-indent-level-directive 2)
 '(verilog-indent-level-module 2)
 '(verilog-indent-lists nil)
 '(verilog-tab-always-indent nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(setq display-line-numbers-type 'relative)
(set-face-attribute 'default nil
                    :family "Consolas" :height 140)
(setq backup-directory-alist '(("." . "~/.emacs_saves")))
(setq default-directory "~/")
(set-frame-parameter (selected-frame) 'alpha '(95 . 95))
(add-to-list 'default-frame-alist '(alpha . (95 . 95)))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(column-number-mode)
;; Enable line numbers for some modes
(dolist (mode '(text-mode-hook
                prog-mode-hook
                conf-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 1))))
