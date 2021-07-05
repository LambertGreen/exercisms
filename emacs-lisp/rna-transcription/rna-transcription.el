;;; rna-transcription.el -- RNA Transcription (exercism)

;;; Commentary:

;;; Code:

(defconst dna-to-rna-nucleotide-complement-map
  '(("G" . "C") ("C" . "G") ("T" . "A") ("A" . "U")))

(defun dna-to-rna-nucleotide-complement (dna-nucleotide)
  "Return the RNA complement of the DNA-NUCLEOTIDE."
  (let ((complement (cdr (assoc dna-nucleotide dna-to-rna-nucleotide-complement-map))))
    (if (stringp complement)
        complement
      (error "Not a nucleotide"))))

(defun to-rna (dna-strand)
  "Return RNA transcription for given DNA-STRAND."
  (string-join (mapcar
                'dna-to-rna-nucleotide-complement
                (mapcar 'string dna-strand))))

(provide 'rna-transcription)
;;; rna-transcription.el ends here
