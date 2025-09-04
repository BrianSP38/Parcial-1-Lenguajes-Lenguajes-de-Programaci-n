# AFD para reconocer identificadores

def afd_id(cadena):
    if not cadena:
        return False
    if not (cadena[0].isalpha()):  # Primera letra
        return False
    for c in cadena[1:]:
        if not (c.isalnum()):
            return False
    return True

# --- Pruebas ---
pruebas = ["Var1", "x123", "HolaMundo", "123abc", "a-b"]
for p in pruebas:
    print(f"{p} -> {'ACEPTA' if afd_id(p) else 'NO ACEPTA'}")
