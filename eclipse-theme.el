;;; eclipse-theme.el --- Theme based on Eclipse circa 2010

;; Copyright (C) 2015 Oleh Krehel

;; Author: Oleh Krehel <ohwoeowho@gmail.com>
;; URL: https://github.com/abo-abo/eclipse-theme
;; Version: 0.1.0
;; Keywords: themes

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; This theme assumes light background.  To load it, use:
;;
;;     (require 'eclipse-theme)

;;; Code:

(deftheme eclipse
    "Color theme from Eclipse.")

(let ((class '((class color) (min-colors 88) (background light)))
      (eclipse-bg "#ffffff")
      (eclipse-fg "#000000")
      (eclipse-const "#110099")
      (eclipse-comment "#3F7F5F")
      (eclipse-error "#FF0000")
      (eclipse-builtin "#7F0055")
      (eclipse-string "#2A00FF")
      (eclipse-blue-3 "#758BC6")
      (eclipse-region "#f9b593")
      (eclipse-shadow "grey50"))
  (apply 'custom-theme-set-faces 'eclipse
         (mapcar
          (lambda (x) `(,(car x) ((,class ,(cdr x)))))
          `((default :family "DejaVu Sans Mono"
              :height 113
              :foreground ,eclipse-fg
              :background ,eclipse-bg)
            (cursor :background ,eclipse-fg)
            (shadow :foreground ,eclipse-shadow)
            (success :foreground ,eclipse-error)
            (error :foreground ,eclipse-error :weight bold)
            (warning :foreground "DarkOrange" :weight bold)
            (highlight :background "darkseagreen2")
            (fringe :background ,eclipse-bg)
            (region :background ,eclipse-region :foreground ,eclipse-bg)
            (secondary-selection :background "#333366" :foreground "#f6f3e8")
            ;; (font-lock-negation-char-face :foreground "#e8e2b7")
            (font-lock-builtin-face :foreground ,eclipse-builtin :bold t)
            (font-lock-comment-face :foreground ,eclipse-comment :slant normal)
            (font-lock-comment-delimiter-face :foreground ,eclipse-comment :slant normal)
            (font-lock-constant-face :foreground ,eclipse-const)
            (font-lock-doc-face :foreground ,eclipse-string)
            (font-lock-doc-string-face :foreground ,eclipse-string)
            (font-lock-function-name-face :foreground ,eclipse-fg :bold t)
            (font-lock-keyword-face :foreground ,eclipse-builtin :weight bold)
            (font-lock-preprocessor-face :foreground ,eclipse-builtin :bold t)
            (font-lock-regexp-grouping-backslash :foreground ,eclipse-builtin)
            (font-lock-regexp-grouping-construct :foreground ,eclipse-builtin)
            (font-lock-string-face :foreground ,eclipse-string)
            (font-lock-type-face :foreground ,eclipse-fg :underline t :slant italic)
            (font-lock-variable-name-face :foreground ,eclipse-fg)
            (font-lock-warning-face :foreground ,eclipse-error :weight bold)
            (org-code :foreground ,eclipse-builtin :weight bold)
            (org-verbatim :foreground ,eclipse-const)
            (ido-subdir :weight bold)
            (mode-line :foreground "black" :background "#f9b593" :box nil)
            (mode-line-inactive :foreground "grey20" :background "grey90" :box nil)
            (minibuffer-prompt :foreground "medium blue")
            (hl-line :background "#e5e4e2")
            ;; defaults
            (mode-line-buffer-id)
            (show-paren-match :background "turquoise")
            (isearch :background "magenta3" :foreground "lightskyblue1")
            (link :foreground "RoyalBlue3" :underline t)
            ;; other packages
            (helm-locate-finish :foreground ,eclipse-const)
            (aw-mode-line-face :foreground ,eclipse-string)
            (ivy-current-match :background "#e5b7c0")
            (swiper-match-face-1 :background "#FEEA89")
            (swiper-match-face-2 :background "#F9A35A")
            (swiper-match-face-3 :background "#fb7905")
            (swiper-match-face-4 :background "#F15C79")
            (swiper-line-face :background "#f3d3d3")
            (powerline-active1 :background "grey22" :foreground "white" :inherit mode-line)
            (powerline-active2 :background "grey40" :foreground "white" :inherit mode-line)
            (powerline-inactive1 :background "grey22" :foreground "white" :inherit mode-line-inactive)
            (powerline-inactive2 :background "grey40" :foreground "white" :inherit mode-line-inactive)))))

(custom-theme-set-variables
 'eclipse
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682"
                            "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"]))

(provide 'eclipse-theme)

;;; eclipse-theme.el ends here
