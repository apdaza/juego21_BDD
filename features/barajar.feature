Feature: barajar al inicio
    
    Como repartidor quiero barajar las cartas para iniciar el juego.

Scenario: barajar
Given un mazo para jugar 21
When el repartidor baraja el mazo
Then las cartas 5 y 10 no son iguales
And la catidad de cartas es 52
