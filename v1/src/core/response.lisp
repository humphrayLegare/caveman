#|
  This file is a part of Caveman package.
  URL: http://github.com/fukamachi/caveman
  Copyright (c) 2011 Eitaro Fukamachi <e.arrows@gmail.com>

  Caveman is freely distributable under the LLGPL License.
|#

(in-package :cl-user)
(defpackage caveman.response
  (:use :cl
        :clack.response)
  (:shadow :<response>)
  (:export :status
           :headers
           :push-header
           :body
           :set-cookie
           :redirect
           :finalize))
(in-package :caveman.response)

(cl-syntax:use-syntax :annot)

@export
(defclass <response> (clack.response:<response>) ()
  (:documentation "Class for Caveman Response."))

@export
(defun make-response (&optional status headers body)
  "Construct a response instance."
  (make-instance '<response>
     :status status
     :headers headers
     :body body))
