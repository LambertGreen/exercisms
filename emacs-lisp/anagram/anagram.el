;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun anagram/sort-chars-in-word (word)
  "Return a new word that has the same letters as WORD but in lower case and in sorted order."
  (apply 'string (sort (mapcar
                        (lambda (letter)
                          (downcase letter))
                        word)
                       '<)))

(defun anagramp (target candidate)
  "Return t if CANDIDATE is an anagram of TARGET."
  (if (equal target candidate)
      nil
    (equal (anagram/sort-chars-in-word target) (anagram/sort-chars-in-word candidate) )))

(defun anagrams-for (word candidates)
  "Return a list of words from CANDIDATES that are anagrams of WORD."
  (cl-remove-if-not (lambda (candidate) (anagramp word candidate)) candidates)
  )

;; ---------------
;; Testing ground
;; ---------------
;; (anagram/sort-chars-in-word "defabc")
;; (anagram/sort-chars-in-word "dfeabc")
;; (cl-remove-if-not (lambda (candidate) (anagram/anagramp "word" candidate)) '("word" "words" "drow"))
;; (anagram/find-anagrams-of "word" '("word" "words" "drow"))

;; -----------------
;; Learning ground
;; -----------------
;; (car '(1 2 3 ))
;; (car "a b c")
;; (string-to-char "bc")
;; (substring "abc" 1 2)
;; (split-string "abcdef")
;; (concat (sort (mapcar
;;        (lambda (n)
;;          (string n))
;;        "baedf")
;;       'string<))
;; (apply 'concat '("a" "b" "c"))
;; (apply 'string (list 100 101 102))
;; (apply 'string (sort (mapcar
;;        (lambda (n)
;;          n)
;;        "baedf")
;;       '<))
;; (cl-remove-if-not 'stringp '("abc" 234 "456" 678))

(provide 'anagram)
;;; anagram.el ends here
