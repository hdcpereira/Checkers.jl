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

        global tabuleiro = [
        "x" "-" "x" "-" "x" "-" "x" "-" "1";
        "-" "x" "-" "x" "-" "x" "-" "x" "2";
        "x" "-" "x" "-" "x" "-" "x" "-" "3";
        "-" "-" "-" "-" "-" "-" "-" "-" "4";
        "-" "-" "-" "-" "-" "-" "-" "-" "5";
        "-" "o" "-" "o" "-" "o" "-" "o" "6";
        "o" "-" "o" "-" "o" "-" "o" "-" "7";
        "-" "o" "-" "o" "-" "o" "-" "o" "8";
        "A" "B" "C" "D" "E" "F" "G" "H" "/"]
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


function get_int8()
    while true
        x = tryparse(Int8, readline())
        isnothing(x) || return x
    end
end

function get_piece_place()

    println("choose which piece you want to move")

#TODO use is_a_to_h to test whether column selected is valid

    # function is_a_to_h(text)
    #     return all(c -> 0x41 <= UInt8(c) <= 0x48, text)
    # end

    print("Select column [A:H]: ")
    selected_col = readline()
    selected_col = uppercase(selected_col)

    print("Select row [1:8]: ")
    selected_row = get_int8()

    println("you chose (C|R) ($selected_col|$selected_row)")

    return selected_col, selected_row
end

function get_piece_movement()
    println("choose where the chosen piece will go to")

    print("select column [A,H]: ")
    new_col = readline()
    new_col = uppercase(new_col)

    print("select row [1,8]: ")
    new_row = get_int8()

    println("You chose (C|R) ($new_col|$new_row)")

    return new_col, new_row
end

function validate_position(player_name, selected_col, selected_row, table)

    column_index = findfirst(x-> x == selected_col, table[9,:])

    if table[selected_row, column_index] == player_name
        return println("IHÁ")
    else
        println("movimento invalido seu corno")
    end
end
