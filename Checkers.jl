#=
efetivamente roda o jogo
=#
include("damas.jl")

using DelimitedFiles

#typeof t = Matrix{String}
table = board_start()

writedlm(stdout,table)

player, player_name = sort_player()

println("its $player, '$player_name' turn")

selected_col, selected_row = get_piece_place()

# new_col, new_row = get_piece_movement()

validate_position(player_name, selected_col, selected_row, table)
