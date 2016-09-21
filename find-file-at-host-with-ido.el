;;; find-file-at-host-with-ido.el --- specify a host for ido-find-file

;; Copyright (C) 2016 NGK Sternhagen

;; Author: NGK Sternhagen <sternhagen@protonmail.ch>
;; Version: 0.0.0
;; Keywords: ido tramp
;; URL: https://gitlab.com/skwuent/shell-from-here

;;; Commentary:

;; prompt the user to specify a host and change directories before executing
;; ido-find-file


;;;###autoload
(defun find-file-at-host-with-ido (target-host)
  "find file on TARGET-HOST via M-x find-file-at-host-with-ido."
  (interactive "sEnter host > ")
  (cd (format "/%s:/" target-host))
  (ido-find-file))
