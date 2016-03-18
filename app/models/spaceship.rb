require 'json'
require 'httparty'

def coords
  coordinates = HTTParty.get("http://api.open-notify.org/iss-now.json")
  coordinates.parsed_response["iss_position"]
end

coords
