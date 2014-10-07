class Movie
  
 
  def initialize(trailer,title,year,rated,released,runtime,genre,director,writer,actors,plot,poster,imdb_rating,imdb_votes,imdb_id)
    @trailer = trailer
    @title = title
    @year = year
    @rated = rated
    @released = released
    @runtime = runtime
    @genre = genre
    @director = director
    @writer = writer
    @actors = actors
    @plot = plot
    @poster = poster
    @imdb_rating = imdb_rating
    @imdb_votes = imdb_votes
    @imdb_id = imdb_id
    @data = {"trailer" => trailer,"title" => title, "year" => year, "rated" => rated, "released" => released,
      "runtime" => runtime, "genre" => genre, "director" => director, "writer" => writer, "actors" => actors,
    "plot" => plot, "poster" => poster, "imdb_rating" => imdb_rating, "imdb_votes" => imdb_votes, "imdb_id" => imdb_id}
  end
  
  def get_data
    @data
  end
  def get_trailer
    @trailer
  end
   
  def get_title
    @title
  end
  def get_year
    @year
  end
  def get_rated
    @title
  end
  def get_released
    @released
  end
  def get_runtime
    @title
  end
  def get_genre
    @genre
  end
  def get_director
    @director
  end
  def get_writer
    @writer
  end
  def get_actors
    @actors
  end
  def get_plot
    @plot
  end
  def get_poster
    @poster
  end
   
  def get_imdb_rating
    @imdb_rating
  end
   
  def get_imdb_votes
    @imdb_votes
  end
   
  def get_imdb_id
    @imdb_id
  end
   
   
end


