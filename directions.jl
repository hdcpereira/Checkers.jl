#[Northeast[0], Northwest[1], Southeast[2], Southwest[3]]

function directions(player::Int8, player_normal_piece::String, player_king_piece::String, table)


while true

selected_col, selected_row = get_piece_place(table, player, player_normal_piece, player_king_piece)

println("[Northeast[0], Northwest[1], Southeast[2], Southwest[3]],: ")
println("If you want to go back to choose piece position [4] ")

direction = num_between(0,4)

r = findfirst(x-> x == selected_col, table[9,:])

    if player == 0
        if occursin("x",table[selected_row, r])

            if direction == 2

                if occursin("-", table[selected_row + 1, r + 1])
                    new_col = table[9,r + 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("o",table[selected_row + 1, r + 1]) || occursin("O",table[selected_row + 1, r + 1])
                    new_col = table[9,r + 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 3

                if occursin("-", table[selected_row + 1, r - 1])
                    new_col = table[9,r - 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("o",table[selected_row + 1, r - 1]) || occursin("O",table[selected_row + 1, r - 1])
                    new_col = table[9,r - 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 4

            else
                println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))

            end

        end

        elseif occursin("X", table[selected_row, r])

            if direction == 0

                if occursin("-", table[selected_row - 1, r - 1])
                    new_col = table[9,r - 1]
                    new_row = selected_row - 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("o",table[selected_row - 1, r - 1]) || occursin("O",table[selected_row - 1, r - 1])
                    new_col = table[9,r - 2]
                    new_row = selected_row - 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 1

                if occursin("-", table[selected_row + 1, r - 1])
                    new_col = table[9,r - 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("o",table[selected_row + 1, r - 1]) || occursin("O",table[selected_row + 1, r - 1])
                    new_col = table[9,r - 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 2

                if occursin("-", table[selected_row + 1, r + 1])
                    new_col = table[9,r + 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("o",table[selected_row + 1, r + 1]) || occursin("O",table[selected_row + 1, r - 1])
                    new_col = table[9,r + 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 3

                if occursin("-", table[selected_row - 1, r + 1])
                    new_col = table[9,r + 1]
                    new_row = selected_row - 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("o",table[selected_row - 1, r + 1]) || occursin("O",table[selected_row + 1, r - 1])
                    new_col = table[9,r + 2]
                    new_row = selected_row - 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row

            elseif direction == 4

                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            end
    end


    if player == 1

        if occursin("o",table[selected_row, r])

            if direction == 2

                if occursin("-", table[selected_row + 1, r + 1])
                    new_col = table[9,r + 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("x",table[selected_row + 1, r + 1]) || occursin("X",table[selected_row + 1, r + 1])
                    new_col = table[9,r + 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 3

                if occursin("-", table[selected_row + 1, r - 1])
                    new_col = table[9,r - 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("x",table[selected_row + 1, r - 1]) || occursin("X",table[selected_row + 1, r - 1])
                    new_col = table[9,r - 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 4

            else
                println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))

            end

        end

        elseif occursin("O", table[selected_row, r])

            if direction == 0

                if occursin("-", table[selected_row - 1, r - 1])
                    new_col = table[9,r - 1]
                    new_row = selected_row - 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("x",table[selected_row - 1, r - 1]) || occursin("X",table[selected_row - 1, r - 1])
                    new_col = table[9,r - 2]
                    new_row = selected_row - 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 1

                if occursin("-", table[selected_row + 1, r - 1])
                    new_col = table[9,r - 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("x",table[selected_row + 1, r - 1]) || occursin("X",table[selected_row + 1, r - 1])
                    new_col = table[9,r - 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 2

                if occursin("-", table[selected_row + 1, r + 1])
                    new_col = table[9,r + 1]
                    new_row = selected_row + 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("x",table[selected_row + 1, r + 1]) || occursin("X",table[selected_row + 1, r - 1])
                    new_col = table[9,r + 2]
                    new_row = selected_row + 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row
                else
                    println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
                end

            elseif direction == 3

                if occursin("-", table[selected_row - 1, r + 1])
                    new_col = table[9,r + 1]
                    new_row = selected_row - 1
                    println(Crayon(foreground = :green), "valid move",Crayon(reset = true))
                    return new_col, new_row
                elseif occursin("x",table[selected_row - 1, r + 1]) || occursin("X",table[selected_row + 1, r - 1])
                    new_col = table[9,r + 2]
                    new_row = selected_row - 2
                    println(Crayon(foreground = :green),"valid move",Crayon(reset = true))
                    return new_col, new_row

            elseif direction == 4

            else
                println(Crayon(foreground = :red),"invalid move",Crayon(reset = true))
            end

        end
    end
end

end
