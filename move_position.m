function [move] = move_position(start_x, start_y)
%Since we assume the space to be a 10x10 grid, a leopard is randomly
%assigned a cell on day 1 and it can move to the 8 surrounding cells once
%a day. This function takes care of the possible moves, keeping in mind the
%options when the leopard is in one of the corners.
    if start_x == 1 && start_y == 1
        options = [5,6,7];
        move = datasample(options, 1) ; 
    elseif start_x == 10 && start_y == 10
        options = [1,2,3];
        move = datasample(options, 1)  ;    
    elseif start_x == 1 && start_y == 10
        options = [3,4,5];
        move = datasample(options, 1) ;
    elseif start_x == 10 && start_y == 1
        options = [1,7,8];
        move = datasample(options, 1) ;
    elseif start_x == 1
        options = [3,4,5,6,7];
        move = datasample(options, 1);
    elseif start_y == 1
        options = [1,5,6,7,8];
        move = datasample(options, 1);
    elseif start_x == 10
        options = [1,2,3,7,8];
        move = datasample(options, 1);
    elseif start_y == 10
        options = [1,2,3,4,5];
        move = datasample(options, 1);
    else
        move = ceil(8*rand);
    end
return
end