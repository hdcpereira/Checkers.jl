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

# module Damas

# export board_start

using Printf
# using Unicode

function board_start()

        tabuleiro = [
        "/" "A" "B" "C" "D" "E" "F" "G" "H";
        "1" "x" "-" "x" "-" "x" "-" "x" "-";
        "2" "-" "x" "-" "x" "-" "x" "-" "x";
        "3" "x" "-" "x" "-" "x" "-" "x" "-"; 
        "4" "-" "-" "-" "-" "-" "-" "-" "-";
        "5" "-" "-" "-" "-" "-" "-" "-" "-";
        "6" "-" "o" "-" "o" "-" "o" "-" "o";
        "7" "o" "-" "o" "-" "o" "-" "o" "-";
        "8" "-" "o" "-" "o" "-" "o" "-" "o"]

return tabuleiro
end

function sort_player()
        
        a = rand(1:10,1)
        a = a[1]        

        if a >= 5
                player = 0
                player_name = "x"
        else 
                player = 1
                player_name = "o"
        end

        return player, player_name
end

function get_input()

        print("Escolha a coluna (A, B, C...): ")
        coluna = readline()
        coluna = uppercase(coluna)

        print("Escolha a linha (1, 2, 3...): ")
        linha = readline()
        linha = parse(Int8, linha)

        println("você escolheu $coluna$linha?")

return linha, coluna

end