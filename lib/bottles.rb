class Bottles
    NEW_EMPTY_LINE = "\n"
    NO_LINE = ""
    DEFAULT_MAX_NUMBER_OF_BOTTLES = 99
    DEFAULT_MIN_NUMBER_OF_BOTTLES = 0

    def song()
        return verses(DEFAULT_MAX_NUMBER_OF_BOTTLES, DEFAULT_MIN_NUMBER_OF_BOTTLES)
    end

    def verses(max_number_of_bottles, min_number_of_bottles)
        all_verses = ""
        for current_number_of_bottles in max_number_of_bottles.downto(min_number_of_bottles) do
            all_verses += verse(current_number_of_bottles) + verse_delimiter(current_number_of_bottles, min_number_of_bottles)
        end
        return all_verses
    end

    def verse(number_of_bottles)
        remaining_bottles = number_of_bottles - 1
        if number_of_bottles == DEFAULT_MIN_NUMBER_OF_BOTTLES
            return <<~VERSE
                No more bottles of beer on the wall, no more bottles of beer.
                Go to the store and buy some more, #{DEFAULT_MAX_NUMBER_OF_BOTTLES} bottles of beer on the wall.
            VERSE
        elsif number_of_bottles == 1
            return <<~VERSE
                1 bottle of beer on the wall, 1 bottle of beer.
                Take it down and pass it around, no more bottles of beer on the wall.
            VERSE
        end
        return <<~VERSE
            #{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
            Take one down and pass it around, #{remaining_bottles} bottle#{:s if remaining_bottles > 1} of beer on the wall.
        VERSE
    end

    private def verse_delimiter(current_number_of_bottles, min_number_of_bottles)
        return is_last_verse(current_number_of_bottles, min_number_of_bottles)? NO_LINE : NEW_EMPTY_LINE
    end

    private def is_last_verse(current_number_of_bottles, min_number_of_bottles)
        return current_number_of_bottles == min_number_of_bottles
    end
end