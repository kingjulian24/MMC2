#ruby imports
require 'net/http' 
require 'json'
require_relative 'Movie'
require_relative 'Trailer_Parser'

class Movie_Parser

#returns json hash of movie info
def self.get_json_movie_data(name)
  
  # format string
  name.downcase!
  if name.include? " "
    name.gsub!(/ /, "+") #replace blank with +
  end
  
  url = "http://www.omdbapi.com/?i=&t=#{name}" #add response to url 

  # Make an HTTP request and place the result in jsonStr 
  jsonStr = Net::HTTP.get_response(URI.parse(url)) 
  data = jsonStr.body
  #save hash
  JSON.parse(data)
end


# set movie object
def self.set_up_movie(json_movie_data)
  if json_movie_data["Response"] == 'True'
    movie_title = json_movie_data["Title"].intern #make a symbol of the title string to prevent unwanted change
    Movie.new(Trailer_Parser.get_trailer(json_movie_data["Title"]),movie_title.to_s, json_movie_data["Year"], json_movie_data["Rated"], json_movie_data["Released"], json_movie_data["Runtime"], json_movie_data["Genre"], json_movie_data["Director"], json_movie_data["Writer"], json_movie_data["Actors"], json_movie_data["Plot"], json_movie_data["Poster"], json_movie_data["imdbRating"], json_movie_data["imdbVotes"], json_movie_data["imdbID"])
  else
    false #return blank movie if no response
  end
end

end