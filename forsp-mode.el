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

