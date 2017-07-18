function [output] = verify_magic(SquareArray)

variablename = 0;

if isscalar(SquareArray)
    fprintf('The input was not an array.\n The input was set to 0\n');
    SquareArray = [0];
end

if rem(sqrt(numel(SquareArray)),1) ~= 0 
    fprintf('The input was not a square array.\n The input was set to 0\n');
    SquareArray = [0];
end

Row = [];
RowSum2 = 0;

for index = 1:1:size(SquareArray,1)
    for index2 = 1:1:size(SquareArray,1)
        Row = [Row,SquareArray(index2,index)];
    end
    RowSum = sum(Row(1:size(SquareArray)));
    if RowSum2 ~= 0
        if RowSum2 ~= RowSum
            fprintf('The array is not a magic array.\n')
            variablename = 9;
        end
    end
    RowSum2 = RowSum;
end

column = [];
ColumnSum2 = [];

for index2 = 1:1:size(SquareArray,1)
    for index = 1:1:size(SquareArray,1)
        column = [column;SquareArray(index2,index)];
    end
    ColumnSum = sum(column(1:size(SquareArray,1)));
    if ColumnSum2 ~=0
        if ColumnSum ~= ColumnSum2
            fprintf('The array is not a magic array.\n')
            variablename = 9;
        end
    end
    ColumnSum2 = ColumnSum;
end

if variablename ~= 9
    fprintf('The array is a magic array.\n')
    output = true;
else
    output = false;
end
end
