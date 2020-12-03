from carta import Carta

class Mano:

    def __init__(self, lista):
        self.cartas = []
        for t in lista:
            valor, pinta = t[1:-1].split(",")
            self.cartas.append(Carta(valor, pinta))

    def evaluar(self):
        valor = 0
        for c in self.cartas:
            valor += c.evaluar()
        if self.tiene_a() and valor <= 11:
            valor += 10
        return valor

    def tiene_a(self):
        for c in self.cartas:
            if c.evaluar() == 1:
                return True
        return False

        