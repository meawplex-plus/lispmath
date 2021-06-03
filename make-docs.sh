#!/opt/homebrew/bin/sbcl --script
(load "~/.sbclrc")
(ql:quickload "staple")
(staple:generate :lispmath :if-exists :supersede)
