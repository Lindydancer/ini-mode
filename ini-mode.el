;;; ini-model.el -- Major mode for Windows-style ini files.

;; Copyright (C) 2014 Anders Lindgren

;; Author: Anders Lindgren
;; Keywords: languages, faces
;; Version: 0.0.0
;; Created: 2014-03-19
;; URL: https://github.com/Lindydancer/ini-mode

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Major mode for Windows-style ini files.
;;
;; Features:
;;
;; * Highlight support.
;;
;; * Inherits from `prog-mode'. The effect is that global minor modes
;;   that activates themsleves in `prog-mode' buffers automatically
;;   work in `ini-mode'.

;; Background:
;;
;; There are many implementation of major modes for ini files. This is
;; my attempt at a modern, simple, implementation.

;; Installation:
;;
;; Place the following lines in a suitable initialization file:
;;
;;     (autoload 'ini-mode "ini-mode" nil t)
;;     (add-to-list 'auto-mode-alist '("\\.ini\\'" . ini-mode))

;; Supported Emacs Versions:
;;
;; This package is primarily designed for Emacs 24. However, with the
;; help of the companion package [anders-old-emacs-support][1]
;; it can be used with earlier Emacs versions, at least from Emacs 22.
;;
;; [1]: https://github.com/Lindydancer/andersl-old-emacs-support

;;; Code:

(defvar ini-mode-syntax-table
  (let ((table (make-syntax-table)))
    ;; C and C++-style comments.
    (modify-syntax-entry ?/  ". 124b" table)
    (modify-syntax-entry ?*  ". 23" table)
    (modify-syntax-entry ?\n "> b" table)
    ;; Lisp-style comments.
    (modify-syntax-entry ?\; "< b" table)
    table)
  "Syntax table for `ini-mode'.")

(defvar ini-font-lock-keywords
  '(("^\\[\\(.*\\)\\]"
     (1 font-lock-function-name-face))
    ("^\\([^ \t\n=]+\\) *="
     (1 font-lock-variable-name-face)))
  "Highlight rules for `ini-mode'.")

(define-derived-mode ini-mode prog-mode "ini"
  "Major mode for editing Windows-style ini files."
  (setq font-lock-defaults '(ini-font-lock-keywords nil)))

;;; ini-mode.el ends here
