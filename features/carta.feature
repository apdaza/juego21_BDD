Feature: Carta del 21

    Como jugador quiero determinar el valor de una carta para determinar el valor de la mano.

Scenario Outline: determinar valor carta
Given una <carta> para saber su valor
When el jugador quiere saber su valor
Then el <valor> de la carta es correcto

Examples:
    | carta | valor | 
    | 2, picas  | 2  |
    | A, corazones  | 1  |
    | 8, treboles  | 8  |
    | J, picas  | 10  |
    | Q, picas  | 10  |
    | K, picas  | 10  |