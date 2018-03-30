class PigLatinizer

  def piglatinize(string)

    arr = string.split

    arr.map do |word|
      if word =~ (/\A[aeiou]/i)
          word = word + 'way'
      elsif word =~ (/\A[^aeiou]{1,}/i)
        match = /\A[^aeiou]{1,}/i.match(word)
        word = match.post_match + match.to_s + 'ay'
      end
      word
    end
  end
end
