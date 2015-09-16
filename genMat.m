function [out]= genMat(x)
if ~ismatrix(x)
    error('non-matrix input!');
    disp(x);
end

format rat

for nRow = 1:size(x,1)
    %     eval(['xx', num2str(nRow),' = x(nRow,:)']);
    xx{nRow} = x(nRow,:)';
end

if size(x,1)==size(x,2)
    Disp(['det of x is: ' num2str(det(x))]);
end

Disp(['rank of x is: ' num2str(rank(x))]);

Disp('Reduced row form: ');
disp(rref(x));


keyboard
    function Disp(s)
        disp('------------------------');
        disp(s);
        disp(' ')
    end
end