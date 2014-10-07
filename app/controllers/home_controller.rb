class HomeController < ApplicationController
  def index
  end
  def get_movie
    @movie_info = Hash.new
    @movie_info =  Movie_API.get_movie_info(params['search'])
  end
end
