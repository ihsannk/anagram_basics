
File.open('web2').each do |line|
  Word.create!(
    word: line.chomp,
    sorted_word: line.chomp.downcase.chars.sort.join
    )
end
