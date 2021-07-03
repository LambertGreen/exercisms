;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:
(require 'cl-lib)

(defun hamming-distance (strand1 strand2)
  "Return the hamming distance between STRAND1 and STRAND2."
  (if (not (= (length strand1) (length strand2)))
      (error "Strands must be the same length")
    (apply '+ (cl-mapcar
               (lambda (elm1 elm2) (if (equal elm1 elm2) 0 1))
               (mapcar 'string strand1)
               (mapcar 'string strand2)))))

;;; Testing/Experimenting:
;; (defvar my-list ())
;; (dolist (item '("a" "b" "c"))
;;   (push item my-list))
;; my-list
;; (cl-mapcar #'+ '(1 2 3) '(10 20 30))
;; (cl-mapcar (lambda (elem1 elem2) (if (equal elem1 elem2) 1 0)) '("ABC") '("ABD"))
;; (length '(1 2 3 ))
;; (+ '(0 1 2 nil))
;; (length "ABC")
;; (mapcar 'string "abc")
;; (error "This is an error")

(provide 'hamming)
;;; hamming.el ends here
