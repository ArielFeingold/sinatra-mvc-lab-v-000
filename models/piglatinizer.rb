class PigLatinizer

  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
        word = word + 'way'
    elsif word =~ (/\A[^aeiou][^aeiou]/i)
      match = /\A[^aeiou][^aeiou]/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    end
    word
  end
end
