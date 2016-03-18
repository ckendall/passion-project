require_relative '../models/spaceship'

get "/" do
  erb :"index"
end

get "/spaceships" do
  coords.to_json
end
