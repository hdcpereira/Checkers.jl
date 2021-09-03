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

using Crayons

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

function num_between(i::Int64, j::Int64)

    while true

        x = readline()
        if parse(Int8,x) in i:j
            x = parse(Int8,x)
	    return x
        else
            print(Crayon(foreground=:red),"INVALID INPUT ",Crayon(reset = true),"type a valid number [$i:$j]: ")
        end
    end
end

function letter_between_AH()

    while true

        t = readline()
        t = uppercase(t)
        if "A" <= t <= "H"
            return t
        else
            print(Crayon(foreground=:red),"INVALID INPUT ",Crayon(reset = true),"type a valid letter [A:H]: ")
        end
    end
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

    println("choose which piece you want to move")

    print("Select column [A:H]: ")
    selected_col = letter_between_AH()

    print("Select row [1:8]: ")
    selected_row = num_between(1,8)

    println("you chose (C|R) ($selected_col|$selected_row)")

    return selected_col, selected_row
end


function get_piece_movement(selected_col::String, selected_row::Int8, player, table)
    println("choose where the chosen piece will go to")

    println("[Northeast[0], Northwest[1], Southeast[2], Southwest[3]]")

    r = findfirst(x-> x == selected_col, table[9,:])

    direction = num_between(0,3)

    if player == 0
        if direction == 0
            if occursin("-", table[selected_row - 1, r + 1])
                println(Crayon(foreground = :green), "valid move")
            elseif occursin("x",table[selected_row - 1, r + 1])
                println(Crayon(foreground = :red),"invalid move")
            end
        end
    end

    if player == 1
        if direction == 0
            if occursin("-", table[selected_row - 1, r + 1])
                println(Crayon(foreground = :green), "valid move")
            elseif occursin("o",table[selected_row - 1, r + 1])
                println(Crayon(foreground = :red),"invalid move")
            end
        end
    end

    # println("Your piece will move to (C|R) ($new_col|$new_row)")

    return nothing
end

function validate_position(player_name, selected_col, selected_row, table)

    column_index = findfirst(x-> x == selected_col, table[9,:])

    if table[selected_row, column_index] == player_name
        return println("IHÁ")
    else
        println("movimento invalido seu corno")
    end
end

function validate_move(player_name, selected_col, selected_row, new_col, new_row, table)

end
