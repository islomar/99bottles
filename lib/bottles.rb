class Bottles
    def verse(number_of_bottles)
        remaining_bottles = number_of_bottles - 1
        if number_of_bottles == 0
            return <<~HEREDOC
                No more bottles of beer on the wall, no more bottles of beer.
                Go to the store and buy some more, 99 bottles of beer on the wall.
            HEREDOC
        elsif number_of_bottles == 1
            return <<~HEREDOC
                1 bottle of beer on the wall, 1 bottle of beer.
                Take it down and pass it around, no more bottles of beer on the wall.
            HEREDOC
        end
        <<~HEREDOC
            #{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
            Take one down and pass it around, #{number_of_bottles - 1} bottle#{:s if remaining_bottles > 1} of beer on the wall.
        HEREDOC
    end
end