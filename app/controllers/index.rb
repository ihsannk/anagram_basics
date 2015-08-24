get '/' do
  # Look in app/views/index.erb
  erb :index
end

post "/" do
  #@input = params[':word']
  #@sorted_word = @input.downcase.split("").sort.join("")
  # puts @sorted_word
  #@anagrams = @sorted_word
  #redirect to "/#{@input}"
  redirect ("/#{params[:user_input]}")
end


get '/:input' do
  @input = params['input']
  input = params[:input].chars.sort.join
  @anagrams = Word.where(sorted_word: input)
  # pass anagram here
  # @input = params['word']
  # @sorted_word = @input.downcase.split("").sort.join("")
  # @anagrams = @sorted_word

  erb :index
end

