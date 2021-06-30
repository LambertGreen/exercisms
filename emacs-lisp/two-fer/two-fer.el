;;; two-fer.el --- Two-fer Exercise (exercism)

;;; Commentary:

;;; Code:

(defun two-fer (&optional name)
  "One for NAME, one for me."
  (if (stringp name)
        (format "One for %s, one for me." name)
        (princ "One for you, one for me.")
        ))

(provide 'two-fer)
;;; two-fer.el ends here
