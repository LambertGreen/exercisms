;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:
(defun leap-year-p (year)
  "Return t if YEAR is a leap year, otherwise nil."
  (if (= (mod year 4) 0)
                                        ; year is evely divisible by 4
      (if (= (mod year 100) 0)
                                        ; year is evenly divisible by 100
          (= (mod year 400) 0)
        t)
    nil
    ))

(provide 'leap-year-p)
;;; leap.el ends here
