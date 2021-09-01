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
=#


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

function get_piece_place()

        print("Escolha a coluna (A, B, C...): ")
        coluna = readline()
        coluna = uppercase(coluna)

        print("Escolha a linha (1, 2, 3...): ")
        linha = readline()
        linha = parse(Int8, linha)

        println("você escolheu $coluna$linha")

        return linha, coluna
end

function get_piece_movement()

        print("Escolha para onde deseja mover (coluna)")
        mover_para_coluna = readline()
        mover_para_coluna = uppercase(mover_para_coluna)

        print("Escolha para onde deseja mover (linha)")
        mover_para_linha = readline()
        mover_para_linha = parse(Int8, mover_para_linha)

        println("você escolheu $mover_para_coluna$mover_para_linha")

        return mover_para_coluna, mover_para_linha
end

function validate_move(player::Int ,linha::Int8, coluna::String, mov_linha::Int8, mov_col::String)

#movimento de uma peça normal, sem ser rei#

        if player == 0

                if mov_linha == linha + 1
                        println("o seu movimento é permitido") & validate_move = true
                else println("o seu movimento não é valido") & validate_move = false
                end
        end

        if player == 1
                if mov_linha == linha - 1
                        println("o seu movimento é permitido") & validate_move = true
                else println("o seu movimento não é valido") & validate_move = false
                end
        end

        return validate_move
end


function move_piece(linha::Int8, coluna::String, mov_linha::Int8, mov_col::String, tabuleiro::Matrix{String})

end