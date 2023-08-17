(defn is-even? [n]
  (even? n))

(defn solve-query [numbers query]
  (let [start (dec (first query))
        end (dec (second query))
        sub-list (subvec numbers start (inc end))
        sum (apply + sub-list)]
    (if (is-even? sum) "Even" "Odd")))

(defn main []
  (let [numbers [1 2 3 4 5]  ; Cambia esta lista por tus números
        queries [[1 3] [2 5] [1 5]]  ; Cambia las consultas según tus necesidades
        results (map #(solve-query numbers %) queries)]
    (doseq [result results]
      (println result))))

(main)