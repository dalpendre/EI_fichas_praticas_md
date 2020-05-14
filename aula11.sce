//Aula 11

function P=Warshall(A)
    
    //Devolve a matriz de caminhos de um grafo a partir da sua matriz de adjacências A
    L = size(A,1);
    P=A
    for k=1:L
        for i=1:L
            for j=1:L
                P(i,j)=P(i,j)|(P(i,k)&P(k,j));
            end
        end
        disp('Matriz P na iterada k='+string(k))  
    end
endfunction

/*A=[0 0 0 0 0 1 0 0;0 0 0 0 1 1 0 0;0 0 0 1 0 0 1 0;0 0 0 0 0 0 0 1;0 0 1 0 0 0 0 0;0 0 0 0 0 0 1 0;0 1 0 1 0 0 0 0;0 0 0 0 0 0 1 0]*/

A=[1 1 0 0;1 0 0 1;0 1 0 0;1 0 1 0]
Warshall(A)
 
//-------------------

//infinito no scilab --> %inf

//Ficha 7 ex2
function [Q,M]=Warshall_MIN(W)
    //determinar a matriz de custo mínimo Q e também a matriz com a indicação dos caminhos de custo mínimo M a partir da matriz de pesos W
    
    L=size(W,1)
    
    Q=W;
    
    for i=1:L
        for j=1:L
            if Q(i,j) == %inf
                M(i,j)='-';
            else
                M(i,j)=string(i)+string(j)
            end
        end
    end
endfunction


