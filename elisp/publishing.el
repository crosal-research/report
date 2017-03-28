;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Publishing definitions for project daily
;; data: 14/03/2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-publish-project-alist
      '(("tex"
         :base-directory "./org"
         :base-extension "org"
         :publishing-directory "./latex"
         :with-toc nil
         :recursive nil
         :publishing-function org-latex-publish-to-latex
         )
        ("pdf"
         :base-directory "./"
         :base-extension "org"
         :publishing-directory "./public_pdf/"
         :exclude-tags noexporthtml
         :recursive nil

         :publishing-function org-latex-publish-to-pdf
         )
        ("pdf-output" :components ("tex" "pdf")
       ))
      )
