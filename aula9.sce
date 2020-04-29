//aula 9 - PL6

A=[0 1 0 0 1 0;0 0 1 1 0 0;1 0 0 0 1 0;0 0 0 0 0 0;0 0 0 0 0 1;1 0 0 1 0 0;]

exec('grafo.sce');
grafo(A)

//quantos caminhos existem de comprimento 2 de i para j

A^2

//quantos caminhos existem de comprimento 3 de i para j

A^3

//quantos caminhos existem de comprimento 4 de i para j
A^4

//estudar a conectividade de um grafo, temos de usar a matriz de caminhos

//se a matriz de caminhos P só tem 1's como elementos, então o grafo é fortemente conexo; quer dizer que existe um caminho gerador fechado

P=bool2s(A+A^2+A^3+A^4+A^5+A^6)

//como a matriz de caminhos tem zeros, logo o grafo não é fortemente conexo; a 4ª linha é de zeros pois o vértice 4 é um poço.

P2=bool2s(P+P')

//o grafo é unilateralmente conexo, pois, fora da diagonal principal, só temos 1´s como elementos






