include("source.jl")

using DelimitedFiles

table = board_start()

writedlm(stdout,table)

player, player_normal_piece, player_king_piece = sort_player()

println("hello there, the first player will be '$player_normal_piece'")

global player_x_points = 0
global player_o_points = 0

while true

    global player
    global player_normal_piece
    global player_king_piece

    new_col, new_row, remove_piece, selected_col, selected_row = get_piece_movement(player, player_normal_piece, player_king_piece, table)

    if player == 0
        if remove_piece == true
            global player_x_points += 1
        end
    end

    if player == 1
        if remove_piece == true
            global player_o_points += 1
        end
    end

    execute_move(player, player_normal_piece, player_king_piece, selected_col, selected_row, new_col, new_row, remove_piece, table)

    player, player_normal_piece, player_king_piece = change_player(player)

    println("pontuação atual: ",Crayon(foreground=:blue), " x",Crayon(reset = true), " $player_x_points",Crayon(foreground=:yellow), " o",Crayon(reset = true), " $player_o_points")
    writedlm(stdout,table)

    println("its '$player_normal_piece' turn now")

end
