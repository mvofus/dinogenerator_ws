
(cl:in-package :asdf)

(defsystem "dinogenerator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GenerateDino" :depends-on ("_package_GenerateDino"))
    (:file "_package_GenerateDino" :depends-on ("_package"))
  ))