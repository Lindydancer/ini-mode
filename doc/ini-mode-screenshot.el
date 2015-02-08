;; ini-mode-screenshot.el --- prepare Emacs for screenshot of ini-mode.

;; Usage:
;;
;;   emacs -Q -l ini-mode-screenshot.el
;;
;;   Take screenshot. OS X: Cmd-Shift-4 SPC click on window.

(setq inhibit-startup-screen t)

(blink-cursor-mode -1)
(tool-bar-mode -1)

(defvar ini-mode-screenshot-file-name
  (or load-file-name
      (buffer-file-name)))

(let ((dir (file-name-directory ini-mode-screenshot-file-name)))
  (load (concat dir "../ini-mode.el"))
  (find-file (concat dir "demo.ini")))

(ini-mode)

(set-frame-size (selected-frame) 60 17)

(goto-char (point-max))

(message "")

;; ini-mode-screenshot.el ends here
