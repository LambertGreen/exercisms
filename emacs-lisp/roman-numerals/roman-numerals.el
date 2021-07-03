;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; Commentary:

;;; Code:
(defconst integer-to-roman
  '((1 . "I") (4 . "IV") (5 . "V") (9 . "IX") (10 . "X")
    (40 . "XL") (50 . "L") (90 . "XC") (100 . "C")
    (400 . "CD") (500 . "D") (900 . "CM") (1000 . "M")))

(defun find-largest-roman-numeral-unit-less-than-or-equals (number)
  "Return the largest roman numeral unit that is less or equals to NUMBER."
  (seq-find
   (lambda (candidate) (or (= (car candidate) number) (< (car candidate) number) ))
   (reverse integer-to-roman)))

(defun to-roman (number)
  "Return the roman numeral for NUMBER."
  (let ((roman-unit (find-largest-roman-numeral-unit-less-than-or-equals number)))
    (if (= (car roman-unit) number)
        (cdr roman-unit)
      (concat (cdr roman-unit) (to-roman (- number (car roman-unit)))))))

(provide 'roman-numerals)
;;; roman-numerals.el ends here
