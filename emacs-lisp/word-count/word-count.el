;;; word-count.el --- word-count Exercise (exercism)

;;; Commentary:

;;; Code:

(defun inc-word-count (word word-frequencies)
  "Increment the frequency of WORD in WORD-FREQUENCIES."
  (puthash word (1+ (gethash word word-frequencies 0)) word-frequencies))

(defun hash-to-alist (hash-map)
  "Return HASH-MAP as an alist."
  (let ((alist ()))
    (maphash
     (lambda (k v)
       (push (cons k v) alist))
     hash-map)
    alist))

(defun normalize (word)
  "Return WORD as trimmed, lowercase and without punctuation."
  (let ((normalized (downcase (string-trim word))))
    (replace-regexp-in-string "\[!@$%^&\]" "" normalized)))

(defun tokenize (phrase)
  "Return a list of words from PHRASE split by common delimiters."
     (delete "" (split-string phrase "\[\s;:,\]")))

(defun word-count (phrase)
  "Return the frequncy of words in a PHRASE."
  (let ((word-frequencies (make-hash-table :test 'equal)))
    (mapc
     (lambda (word) (inc-word-count (normalize word) word-frequencies))
     (tokenize phrase))
    (hash-to-alist word-frequencies)))

(provide 'word-count)
;;; word-count.el ends here
