include("directions.jl")
using Crayons

"Starts board with 8x8 structure #TODO starts the board with input"
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


"receives `i` and `j` and asks user to input a number between `i` and `j` if its valid, returns it."
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

"Checks if user `String` input is between `[i,j]`"
function letter_between(i::String, j::String)

    while true

        t = readline()
        t = uppercase(t)
        if i <= t <= j
            return t
        else
            print(Crayon(foreground=:red),"INVALID INPUT ",Crayon(reset = true),"type a valid letter [A:H]: ")
        end
    end
end


"Sorts player `1` or `2` based in `rand` numbers"
function sort_player()

        a = rand(1:10,1)
        a = a[1]

        if a >= 5
                player = Int8(0)
                player_normal_piece = "x"
                player_king_piece = "X"
        else
                player = Int8(1)
                player_normal_piece = "o"
                player_king_piece = "O"
        end

        return player, player_normal_piece, player_king_piece
end

function change_player(player::Int8)

    if player == 1
        player = Int8(0)
        player_normal_piece = "x"
        player_king_piece = "X"

    elseif player == 0
        player = Int8(1)
        player_normal_piece = "o"
        player_king_piece = "O"

    end

    return player, player_normal_piece, player_king_piece
end

function get_piece_place(table::Matrix{String}, player::Int8, player_normal_piece::String, player_king_piece::String)

    println("choose which piece you want to move")
    while true
        print("Select column [A:H]: ")
        selected_col = letter_between("A", "H")

        print("Select row [1:8]: ")
        selected_row = num_between(1,8)

        r = findfirst(x-> x == selected_col, table[9,:])

        if player == 0
            if table[selected_row, r] == player_normal_piece || table[selected_row, r] == player_king_piece
                return selected_col, selected_row
            else
                println(Crayon(foreground=:red),"INVALID INPUT ",Crayon(reset = true),"type a valid piece", Crayon(foreground =:blue)," $player_normal_piece ",Crayon(reset = true))
            end
        end

        if player == 1
            if table[selected_row, r] == player_normal_piece || table[selected_row, r] == player_king_piece
                return selected_col, selected_row
            else
                println(Crayon(foreground=:red),"INVALID INPUT ",Crayon(reset = true),"type a valid piece", Crayon(foreground =:blue)," $player_normal_piece ",Crayon(reset = true))
            end
        end
    end


    println("you chose (C|R) ($selected_col|$selected_row)")


end


function get_piece_movement(player::Int8, player_normal_piece::String, player_king_piece::String, table::Matrix{String})

    new_col, new_row, remove_piece, selected_col, selected_row = directions(player, player_normal_piece, player_king_piece, table)

    println("Your piece will move to (C|R) ($new_col|$new_row)")

    return new_col, new_row, remove_piece, selected_col, selected_row

end

function execute_move(player::Int8, player_normal_piece::String ,player_king_piece::String, selected_col::String, selected_row::Int8, new_col::String, new_row::Int64, remove_piece::Bool, table::Matrix{String})

    c_1 = findfirst(x-> x == new_col, table[9,:])
    c_2 = findfirst(x-> x == selected_col, table[9,:])


    if player == 0

        table[new_row, c_1] = player_normal_piece
        table[selected_row, c_2] = "-"
    else

    end

    if player == 1

        table[new_row, c_1] = player_normal_piece
        table[selected_row, c_2] = "-"
    else

    end

end
