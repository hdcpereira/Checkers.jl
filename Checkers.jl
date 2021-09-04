# #=
# efetivamente roda o jogo
# =#
include("source.jl")

using DelimitedFiles

# #typeof t = Matrix{String}
table = board_start()

writedlm(stdout,table)

player, player_normal_piece, player_king_piece = sort_player()

println("its $player, '$player_normal_piece' turn")

new_col, new_row = get_piece_movement(player, player_normal_piece, player_king_piece, table)

println("$new_col, $new_row")

# validate_position(player_name, selected_col, selected_row, table)

# x = num_between_18("9")

# println(x)

# x = letter_between_AH("H")

# println(x)
