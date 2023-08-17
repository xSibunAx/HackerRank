#!/bin/tcsh

# Este es un ejemplo muy básico de Counting Sort en tcsh
set input = (10 5 8 3 2)
set max_value = 10
set frequencies = (0 0 0 0 0 0 0 0 0 0)
set sorted = ()

# Contar las frecuencias
foreach num ($input)
    set frequencies[$num] = `expr $frequencies[$num] + 1`
end

# Construir el arreglo ordenado
foreach freq ($frequencies)
    if ($freq > 0) then
        @ i = 0
        while ($i < $freq)
            set sorted = ($sorted $i)
            @ i++
        end
    endif
end

# Imprimir el arreglo ordenado
echo "Arreglo ordenado:"
foreach num ($sorted)
    echo -n "$num "
end
echo ""