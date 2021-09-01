#= 
efetivamente roda o jogo
=# 
include("damas.jl")

# using DelimitedFiles

t = board_start()

# writedlm(stdout,t)

linha, coluna = get_piece_place()

mover_para_coluna, mover_para_linha = get_piece_movement()

player = 0

validate_move(player ,linha, coluna, mover_para_linha, mover_para_coluna)


