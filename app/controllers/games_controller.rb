require "json"
require "open-uri"

class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.shuffle[0,10]
  end

  def score
    @grid = false
    @word = params[:key]
    word = params[:key]
    @grid_word = params[:grid_word]
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    word_serialized = URI.open(url).read
    result = JSON.parse(word_serialized)

    @grid = @word.split('').all? {|letter| @grid_word.count(letter) >= @word.count(letter)}




    if result["found"] == true
      @res = true
    else
      @res = false
    end
  end

end
