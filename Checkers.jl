# #=
# efetivamente roda o jogo
# =#
include("damas.jl")

using DelimitedFiles

# #typeof t = Matrix{String}
table = board_start()

writedlm(stdout,table)

player, player_name = sort_player()

println("its $player, '$player_name' turn")

selected_col, selected_row = get_piece_place()

get_piece_movement(selected_col, selected_row, player, table)

# validate_position(player_name, selected_col, selected_row, table)

# x = num_between_18("9")

# println(x)

# x = letter_between_AH("H")

# println(x)
