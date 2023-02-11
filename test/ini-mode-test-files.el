;;; ini-mode-test-files.el --- Test for ini-mode.

;; Copyright (C) 2023 Anders Lindgren

;; Author: Anders Lindgren
;; Keywords: faces languages

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Regression test of `ini-mode', a major mode for Windows .ini files.
;; This module verifies fontification of a number of files. This is
;; done by keeing a text representation of the fontification using
;; `faceup' markup, in addition to the original files.
;;
;; The actual check is performed using `ert', with font-lock test
;; function provided by `faceup'.

;;; Code:

(require 'faceup)

(defvar ini-mode-test-dir (faceup-this-file-directory))

(defun ini-mode-test-file (file)
  "Test that FILE is fontified as the .faceup file describes.

FILE is interpreted as relative to this source directory."
  (faceup-test-font-lock-file '(ini-mode)
                              (concat ini-mode-test-dir file)))
(faceup-defexplainer ini-mode-test-file)


(ert-deftest ini-mode-test-files ()
  (should (ini-mode-test-file "files/basic.ini")))

(provide 'ini-mode-test-files)

;; ini-mode-test-files.el ends here.
