# Verifica se x é igual a y
BEQ $s0, $s1, L2  # Desvia para L2 se x == y

# Se não houver desvio, continua aqui
ADD $s2, $s3, $s4  # a = b + c

# Rótulo L2
L2:
SUB $s2, $s3, $s4  # a = b - c