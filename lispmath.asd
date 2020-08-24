(asdf:defsystem #:lispmath
    :version "1.0.0"
    :description "PUBLIC API 1"
    :author "mohindertalafuse (Mo Talafuse) and stalafuse (Scott Talafuse)"
    :homepage "https://mohindertalafuse.github.io"
    :bug-tracker "https://github.com/mohindertalafuse/lispmath/issues"
    :source-control (:git "https://github.com/mohindertalafuse/lispmath.git")
    :serial t
    :components ((:file "package")
		 (:file "functions-and-predicates")
		 (:file "trig")))
