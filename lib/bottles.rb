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

    def verses(max_number_of_bottles, min_number_of_bottles)
        all_verses = ""
        for current_number_of_bottles in max_number_of_bottles.downto(min_number_of_bottles) do
            all_verses += verse(current_number_of_bottles)
            all_verses = add_linebreak_if_needed(all_verses, current_number_of_bottles, min_number_of_bottles)
        end
        return all_verses
    end

    private def add_linebreak_if_needed(all_verses, current_number_of_bottles, min_number_of_bottles)
        if is_last_verse(current_number_of_bottles, min_number_of_bottles)
            return all_verses
        end
        return all_verses += "\n"
    end

    private def is_last_verse(current_number_of_bottles, min_number_of_bottles)
        return current_number_of_bottles == min_number_of_bottles
    end
end