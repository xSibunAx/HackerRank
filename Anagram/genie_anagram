init
    // Lee la cantidad de casos de prueba
    n_cases: int = stdin.read_int()

    // Itera a través de cada caso de prueba
    for _ in 0..n_cases - 1
        s: string = stdin.read_line()
        length: int = s.len

        if length % 2 != 0
            // Si la longitud de la cadena es impar, no es posible formar un anagrama
            stdout.write_line("-1")
        else
            // Divide la cadena en dos mitades
            half_length: int = length / 2
            s1: string = s[0..half_length - 1]
            s2: string = s[half_length..length - 1]

            // Cuenta las ocurrencias de cada letra en ambas mitades
            freq1: array[int, 26] = array_fill(0, 26)
            freq2: array[int, 26] = array_fill(0, 26)

            for i in 0..half_length - 1
                freq1[s1[i] - 'a'] += 1
                freq2[s2[i] - 'a'] += 1

            // Calcula la diferencia entre las frecuencias de letras en ambas mitades
            diff: int = 0
            for i in 0..25
                diff += abs(freq1[i] - freq2[i])

            // El número mínimo de cambios necesarios para formar un anagrama
            stdout.write_line("%d" % (diff / 2))
