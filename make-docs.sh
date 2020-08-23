#!/usr/bin/env sbcl --script
(load "~/.sbclrc")
(ql:quickload "staple")
(staple:generate :lispmath :if-exists :overwrite)
