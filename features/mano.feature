Feature: mano del 21

    Como jugador quiero determinar el valor de la mano para seguir jugando.

Scenario Outline: valor de la mano
Given una <mano> para sumar sus cartas
When el jugador suma la mano
Then el <valor> es correcto

Examples:
    | mano | valor |
    | (5, picas);(J, treboles)  | 15  | 
    | (9, corazones);(A, treboles)  | 20  |
    | (3, diamantes);(Q, picas)  | 13  |
    | (A, picas);(A, treboles)  | 12  |
    | (A, diamantes);(J, treboles)  | 21  |
    | (5, picas);(J, treboles);(3, treboles)  | 18  |     
    | (A, picas);(A, treboles);(A, diamantes)  | 13  |
    | (A, picas);(A, treboles);(A, diamantes);(Q, picas)  | 13  |