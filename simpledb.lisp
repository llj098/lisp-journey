
(defvar *db* nil)

(defun make-cd (:title title :artist artist :rating rating :ripped ripped) 
  (list (:title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*))

(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~}~%" cd)))

(defun prompt-read (prompt)
  (format *query-io* "-a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd ()
  (make-cd
   (prompt-read "Title")
   (prompt-read "Artist")
   (prompt-read "Rating")
   (prompt-read "Ripped [y/n]")))

   
