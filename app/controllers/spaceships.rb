require_relative '../models/spaceship'

get "/" do
  @coordinates = coords
  erb :"index"
end
