//Aula 12

excel=readxls('grafos_f7.xls');
Adj=excel(1).value;
Dur=excel(2).value;
Custo=excel(3).value;
vertice=string(excel(4));

function viagem_custo(W,partida,chegada)

[Q,M]=Warshall_MIN(W);

disp('O custo mínimo da viagem entre '+string(partida)+' e '+string(chegada)+' é de '+string(Q(partida,chegada)))
disp(M(partida,chegada))

endfunction

viagem_custo(Custo,1,6)
