class Bottles
    def verse(number_of_bottles)
        <<~HEREDOC
            #{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
            Take one down and pass it around, #{number_of_bottles - 1} bottle#{:s if number_of_bottles - 1 > 1} of beer on the wall.
        HEREDOC
    end
end