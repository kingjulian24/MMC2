require 'net/http'
require 'xmlsimple'

class Trailer_Parser

  def self.clean_trailer(trailer)
    # remove [" and "] 
    s = trailer.to_s.gsub!(/\["/, " ")
    s.gsub!(/"\]/, " ")
    s.gsub!(/\\/,"")
  end

  def self.get_trailer(title)
    # format string
      title.downcase!
      if title.include? " "
        title.gsub!(/ /, "-")
      end
      url = "http://simpleapi.traileraddict.com/#{title}/trailer"
      xml_data = Net::HTTP.get_response(URI.parse(url)).body

    begin
      data = XmlSimple.xml_in(xml_data)
    rescue ArgumentError
      return "no trailer"
    end
  
    trailer_hash = data["trailer"]
    Trailer_Parser.clean_trailer(trailer_hash[0]["embed_standard"])
    
    
  end

end