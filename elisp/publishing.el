;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Publishing definitions for project daily
;; data: 14/03/2017
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-publish-project-alist
      '(("html-monitor"
        :base-directory "./"
        :base-extension "org"
        :publishing-directory "./public_html/"
        :exclude-tags noexporthtml
        :recursive nil
        :publishing-function org-html-publish-to-html
        )
        ("tex-monitor"
         :base-directory "./org"
         :base-extension "org"
         :publishing-directory "./latex"
         :with-toc nil
         :recursive nil
         :publishing-function org-latex-publish-to-latex
         )
        ("pdf-monitor"
         :base-directory "./"
         :base-extension "org"
         :publishing-directory "./public_pdf/"
         :exclude-tags noexporthtml
         :recursive nil
         :publishing-function org-latex-publish-to-pdf
         )
      ("pdf-output" :components ("tex-monitor" "pdf-monitor")
       ))
      )




