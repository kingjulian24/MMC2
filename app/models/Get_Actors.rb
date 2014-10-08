require 'open-uri'


class Get_Actors
  
  def self.get_actors(actorsString)
    actorsArray = actorsString.split(",");
    href = "<a href=\"http://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=imdb+"
    stars = ''
    actorsArray.each { |star| stars += " "+href + URI::encode(star)+"\"/>"+star+"</a>"  }
    return stars
  end
end





