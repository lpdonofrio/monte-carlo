function [start_x, start_y] = next_position(move, start_x, start_y)
%after a move for the snow leopard has been assigned (between 1 and 8),
%this function determines where the leopard will move on the grid
    if move == 1
        start_x = start_x-1;
        start_y = start_y;
    elseif move == 2
        start_x = start_x-1;
        start_y = start_y-1;
    elseif move == 3
        start_x = start_x;
        start_y = start_y-1;
    elseif move == 4
        start_x = start_x+1;
        start_y = start_y-1;         
    elseif move == 5
        start_x = start_x+1;
        start_y = start_y;
    elseif move == 6
        start_x = start_x+1;
        start_y = start_y+1;
    elseif move == 7
        start_x = start_x;
        start_y = start_y+1;
     elseif move == 8
        start_x = start_x-1;
        start_y = start_y+1;
    end
return
end