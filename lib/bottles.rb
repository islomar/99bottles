class Bottles
    def verse(number_of_bottles)
        <<~HEREDOC
            #{number_of_bottles} bottles of beer on the wall, 99 bottles of beer.
            Take one down and pass it around, 98 bottles of beer on the wall.
        HEREDOC
    end
end