from behave import *
from mano import Mano

@given('una {mano} para sumar sus cartas')
def step(context, mano):
    context.mano = Mano(mano.split(";"))

@when('el jugador suma la mano')
def step(context):
    context.valor = context.mano.evaluar()

@then('el {valor:d} es correcto')
def step(context, valor):
    assert context.valor == valor
