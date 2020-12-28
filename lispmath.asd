(asdf:defsystem #:lispmath
    :version "1.2.0"
    :description "The handy dandy math pack"
    :author "mohindertalafuse (Mo Talafuse) and stalafuse (Scott Talafuse) and ksaj (Karsten Johansson)"
    :homepage "https://mohindertalafuse.github.io"
    :bug-tracker "https://github.com/mohindertalafuse/lispmath/issues"
    :source-control (:git "https://github.com/mohindertalafuse/lispmath")
    :serial t
    :components ((:file "package")
		 (:file "functions-and-predicates")
		 (:file "trig")
                 (:file "circular")))
