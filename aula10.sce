//Aula 10 - Ficha 6

//Ficha 6
//Ex2a

A=[0 0 0 0 0 1 0 0; 0 0 0 0 1 1 0 0; 0 0 0 1 0 0 1 0; 0 0 0 0 0 0 0 1; 0 0 1 0 0 0 0 0; 0 0 0 0 0 0 1 0; 0 1 0 1 0 0 0 0; 0 0 0 0 0 0 1 0]

exec('grafo.sce')

grafo(A)

//------------------
soma=zeros(8,8)
for i=1:8
    soma=soma+A^i;
end
B8=soma

function y = ()
    
    L=size(A,1);
    
    soma=A;
    for i=2:L
        soma=soma+A^i;
    end
    P=bool2s(soma);
    y=isequal(P,ones(L,L));
    
    y=%t;
    for()
    
endfunction
