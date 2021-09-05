include("source.jl")

using DelimitedFiles

table = board_start()

writedlm(stdout,table)

player, player_normal_piece, player_king_piece = sort_player()

println("hello there, the first player will be '$player_normal_piece'")

while true

    global player
    global player_normal_piece
    global player_king_piece

    new_col, new_row, remove_piece, selected_col, selected_row = get_piece_movement(player, player_normal_piece, player_king_piece, table)

    execute_move(player, player_normal_piece, player_king_piece, selected_col, selected_row, new_col, new_row, remove_piece, table)

    player, player_normal_piece, player_king_piece = change_player(player)

    writedlm(stdout,table)

    println("its '$player_normal_piece' turn now")

end
