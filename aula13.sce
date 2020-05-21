//Aula Prática 13
function y=blargura(A,vert)
    //A-matriz de adjacências
    //vert->vértice inicial
    //algoritmo de busca em largura
    
    L=size(A,1);
    
    estado=ones(1,L);   //colocar todos os vértices com estado 1
    
    Fila=list(vert);
    estado(vert)=2; //Colocar o 1º vértice com estado 2
    
    visitado=list();
    while length(Fila) ~= 0
        visitado($+1)=Fila(1)   //O vértice que se encontra an 1ª posição da fila
        estado(Fila(1))=3;
        disp(visitado)
        //estudar os sucessores com estado 1
        for 1:L
            if A(Fila(1),i)==1 & estado(Fila(1))==1
                Fila($+1)=i;
                estado(i)=2
            end
        end    
        //eliminar o 1º elemento da fila
        Fila(1)=null();
    end
    V=visitado;
endfunction

excel=readxls('Grafo_f8.xls');

