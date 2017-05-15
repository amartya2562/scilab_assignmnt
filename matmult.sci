A=input("enter the first matrix : ");
B=input("enter the second matrix : ");

function [C]=matmult(A,B)
    [ar,ac]=size(A);
    [br,bc]=size(B);
    
    if ac~=br then
        error("matrices are not compatible for multiplication ");
        abort;
    else
        s=0;
        for i=1:bc
            for j=1:ar
                for k=1:ac
                    s=s+(A(j,k)*B(k,i));
                end;
                C(j,i)=s;
                s=0;
            end;
        end;
    end;
endfunction
