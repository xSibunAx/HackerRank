(defun find-lonely-integer (numbers)
  (let ((result 0))
    (dolist (num numbers)
      (setq result (logxor result num)))
    result))

(defun main ()
  (let* ((numbers '(1 2 3 4 3 2 1)))  ; Cambia esta lista por tus números
    (format t "El número único es: ~a~%" (find-lonely-integer numbers))))

(main)