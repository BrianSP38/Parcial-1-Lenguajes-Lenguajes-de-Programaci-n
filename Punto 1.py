# AFD para la expresión regular a* b* c*

def afd_abc(cadena):
    estado = 0
    for simbolo in cadena:
        if estado == 0:
            if simbolo == 'a':
                estado = 0
            elif simbolo == 'b':
                estado = 1
            elif simbolo == 'c':
                estado = 2
            else:
                return False
        elif estado == 1:
            if simbolo == 'b':
                estado = 1
            elif simbolo == 'c':
                estado = 2
            else:
                return False
        elif estado == 2:
            if simbolo == 'c':
                estado = 2
            else:
                return False
    return True

# --- Pruebas ---
pruebas = ["aaabbc", "bbbccc", "ccc", "acb", "aabbccaa"]
for p in pruebas:
    print(f"{p} -> {'ACEPTA' if afd_abc(p) else 'NO ACEPTA'}")
