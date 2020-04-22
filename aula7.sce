//Aula 7 - 02 de abril

function NotaEuro
    X=input('Insira o nº de série da nota: ','string')
    
    letra=part(X,1);
    
    if letra=='R'
        Vletra=1;
    elseif letra=='S'
        Vletra=2;
    elseif letra=='T'
        Vletra=3;
    elseif letra=='U'
        Vletra=4;
    elseif letra=='M'
        Vletra=5;
    elseif letra='N'
        Vletra=6;
    end
    
    soma=Vletra;
    
    for i=2:12
        soma=soma+evstr(part(X,i))
    end
    
    if pmodulo(soma,9)==0
        disp('O número inserido é válido!')
    else
        disp('O número inserido não é válido!')
    end

endfunction
//-------------------------
//-------------------------
//Exr1
MR=[1 0 1 0;1 0 1 0;1 1 0 0;0 0 0 1]
//b)
MinvR=MR'
//c
MR2=bool2s(MR*MR)
MR3=bool2s(MR2*MR)
//d)
// MR  =
//    1.    0.    1.    0.  
//    1.    0.    1.    0.  
//    1.    1.    0.    0.  
//    0.    0.    0.    1. 
//
//não é reflexiva - porque existem zeros na diagonal principal
//não é simétrica - MR(1,2)=0 e MR(2,1)=1
//não é antissimétrica - MR(3,1)=1 e MR(1,3)=1 mas 3~=1
//não  é transitivo - MR(3,1)=1 e MR(1,3)=1 mas MR(3,3)=0
//fecho(R)=R U R^2 U R^3 U R^4
//isequal(MR,bool2s(MR+MR2))

//for i=1:4
//    if MR(i,i)==0
//        MR(i,i)=1
//    end
//end

bool2s(MR+eye(4,4))//soma com a matriz identidade

//fecho simétrico
bool2s(MR+MR')

//fecho transitivo

bool2s(MR+MR^2+MR^3+MR^4)

function S=Um(M)
    //M - matriz
    [L,C]=size(M)
    
    for i=1:L
        for j=1:C
            if M(i,j)>1
                M(i,j)=1;
            end
        end
    end
    S=M;
endfunction

function T=relcomp(M,S)
    
    T=Um(M*S);
    
endfunction




