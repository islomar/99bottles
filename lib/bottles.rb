class Bottles
    def verse(number_of_bottles)
        remaining_bottles = number_of_bottles - 1
        if number_of_bottles == 0
            return <<~VERSE
                No more bottles of beer on the wall, no more bottles of beer.
                Go to the store and buy some more, 99 bottles of beer on the wall.
            VERSE
        elsif number_of_bottles == 1
            return <<~VERSE
                1 bottle of beer on the wall, 1 bottle of beer.
                Take it down and pass it around, no more bottles of beer on the wall.
            VERSE
        end
        <<~VERSE
            #{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
            Take one down and pass it around, #{number_of_bottles - 1} bottle#{:s if remaining_bottles > 1} of beer on the wall.
        VERSE
    end

    def verses(number_of_bottles1, number_of_bottles2)
        return verse(number_of_bottles1) + "\n" + verse(number_of_bottles2)
    end
end