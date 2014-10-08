require_relative 'Movie_Parser'


class Movie_API
  
  def self.get_movie_info(title)
    
    json_movie_data = Movie_Parser.get_json_movie_data(title) # get json data with movie title
    movie = Movie_Parser.set_up_movie(json_movie_data) # set up movie object

    movie.get_data
  end
end



