;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:

(defun square (n)
  "Return N x N."
  (* n n))

(defun square-of-sum (num)
  "Return the square of the sum of numbers from 1 to NUM."
  (square (apply '+ (number-sequence 1 num 1))))

(defun sum-of-squares (num)
  "Return the sum of the squares of numbers from 1 to NUM."
  (apply '+ (mapcar 'square (number-sequence 1 num 1))))

(defun difference (num)
  "Return the difference between the square-of-sum of NUM and the sum-of-squares of NUM."
  (- (square-of-sum num) (sum-of-squares num)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
