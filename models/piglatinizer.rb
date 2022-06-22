class PigLatinizer
    VOWELS = ['a','e','i','o','u','A','E','I','O','U']
    def initialize
    end

    def piglatinize(words)
        sentence = []
        words.split(" ").each do |word|
            if VOWELS.include?(word[0])
                sentence << word + "way"
            else
                num = word.index(/[aeiou]/)
                new_word = word + word.slice(0,num) + "ay"
                new_word.slice!(0,num)
                sentence << new_word
            end
        end
        sentence.join(" ")
    end
end