//Aula 12

excel=readxls('grafos_f7.xls');
Adj=excel(1).value;
Dur=excel(2).value;
Custo=excel(3).value;
vertice=string(excel(4));

exec('aula11.sce');

function viagem_custo(W,partida,chegada)

[Q,M]=Warshall_MIN(W);

disp('O custo mínimo da viagem entre '+vertice(partida)+' e '+vertice(chegada)+' é de '+string(Q(partida,chegada))+' euros.')
tempo=0;
caminho=evstr(strsplit(M(partida,chegada)))
for i=1:length(caminho)-1
    tempo=tempo+Dur(caminho(i),caminho(i+1))
end
disp('A sua viagem terá uma duração total de '+string(tempo)+' horas.')
percurso=vertice(partida)
for i=2:length(caminho)
    percurso=percurso+'->'+vertice(caminho(i))
end
disp('O percurso da sua viagem é o seguinte: ')
disp(percurso)
endfunction
viagem_custo(Custo,1,6)
