Feature: barajar al inicio
    
    Como repartidor quiero barajar las cartas para iniciar el juego.

Scenario: barajar
Given un juego de 21
When el repartidor baraja el <mazo>
Then la <pinta1> y <pinta2> no son iguales
And el <valor1> y el <valor2> no son iguales
And <catidad> de cartas es 52
