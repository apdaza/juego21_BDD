class Carta:
    def __init__(self, valor, pinta):
        self.valor = valor
        self.pinta = pinta

    def evaluar(self):
        if self.valor in ['J', 'Q', 'K']:
            return 10
        if self.valor == 'A':
            return 1
        return int(self.valor)