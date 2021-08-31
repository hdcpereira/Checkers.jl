#= definir uma classe jogo que contenha
- uma inicialização do tabuleiro
- gera um número aleatório entre 1 e 2, se 1 "x"(player1) começa
se 2 "o"(player2) começa. 
- movimentação:
        -> escolhe uma peça para mover 
        -> escolhe para onde quer mover
        -> jogo checa validade do movimento (se válido, executa, se não apresenta mensagem de erro e pede um movimento valido)
        -> se o jogador passar por cima de uma peça do oponente, ganha 1 ponto no placar.
        -> fim da jogada e passa para o oponente.
- finalização:
        -> jogador com mais peças ganha

["x""-""x""-""x""-""x""-", 
    "-" "x" "-" "x" "-" "x" "-" "x",
    "x" "-" "x" "-" "x" "-" "x" "-", 
    "-" "-" "-" "-" "-" "-" "-" "-",
    "-" "-" "-" "-" "-" "-" "-" "-",
    "-" "o" "-" "o" "-" "o" "-" "o",
    "o" "-" "o" "-" "o" "-" "o" "-",
    "-" "o" "-" "o" "-" "o" "-" "o"]
        =#

function board_start()

        v1 = ["x""-""x""-""x""-""x""-"] 
#     "-" "x" "-" "x" "-" "x" "-" "x",
#     "x" "-" "x" "-" "x" "-" "x" "-", 
#     "-" "-" "-" "-" "-" "-" "-" "-",
#     "-" "-" "-" "-" "-" "-" "-" "-",
#     "-" "o" "-" "o" "-" "o" "-" "o",
#     "o" "-" "o" "-" "o" "-" "o" "-",
#     "-" "o" "-" "o" "-" "o" "-" "o"]

    return v1
end 