(defun print-squares (n)
  (loop ((i 1))
    (when (<= i n)
      (io:format "~p~n" (list (* i i)))
      (print-squares (+ i 1)))))

(defun main ()
  (let ((n (lfe_io:read-line "Ingrese un número: ")))
    (print-squares (lfe_io_lib:parse-integer n))))

(main)
