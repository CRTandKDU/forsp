;;; forsp-mode.el --- FORSP utilities

;; Friday, June 14, 2024

;; Author: jmc

;;; Commentary:

;; This library provides some utilities when forsping, e.g.
;;     <M-x forsp-eval-region>
;;
;; 
(defcustom forsp-executable "C:\\Users\\chauv\\Documents\\forsp\\forsp.exe"
  "Location of the FORSP executable."
  :type 'string
  :group 'FORSP
  :link '(url-link "https://github.com/xorvoid/forsp")
  )

(defun forsp-eval-region (start end)
  (interactive "rEval FORSP region ")
  (let ((beg (buffer-substring-no-properties start end))
	)
    (call-process forsp-executable nil (get-buffer-create "*FORSP*") nil beg)))

(provide 'forsp-mode)

;;; forsp-mode.el ends here
