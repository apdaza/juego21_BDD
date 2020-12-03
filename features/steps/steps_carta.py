from behave import *
from carta import Carta

@given('una {carta} para saber su valor')
def setp(context, carta):
    valor, pinta = carta.split(",")
    context.carta = Carta(valor, pinta)

@when('el jugador quiere saber su valor')
def setp(context):
    context.valor = context.carta.evaluar()

@then('el {valor:d} de la carta es correcto')
def setp(context, valor):
    assert context.valor == valor