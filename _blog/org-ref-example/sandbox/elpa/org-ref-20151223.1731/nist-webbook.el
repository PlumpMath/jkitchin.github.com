;;; nist-webbook.el --- Integration of Emacs with NIST Webbook
;; Integration of Emacs with NIST webbook

;;; Commentary:
;; nist-webbook-name :: search for a chemical name
;; nist-webbook-formula :: search by chemical formula

;;; Code:

(require 'org)

(defun nist-webbook-formula (formula)
  "Search NIST webbook for FORMULA."
  (interactive "sFormula: ")
  (browse-url
   (concat
    "http://webbook.nist.gov/cgi/cbook.cgi?Formula="
    formula
    "&NoIon=on&Units=SI")))

(defun nist-webbook-name (name)
  "Search NIST webbook for NAME."
  (interactive "sChemical Name: ")
  (browse-url
   (concat "http://webbook.nist.gov/cgi/cbook.cgi?Name="
           (url-hexify-string name)
           "&Units=SI")))


(org-add-link-type
 "nist-wb-name"
 (lambda (name)
   (nist-webbook-name name)))

(org-add-link-type
 "nist-wb-formula"
 (lambda (formula)
   (nist-webbook-formula formula)))

(provide 'nist-webbook)

;;; nist-webbook.el ends here