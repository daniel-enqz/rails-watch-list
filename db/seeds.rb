require 'net/http'
require 'json'

20.times do |i|
  url = "http://tmdb.lewagon.com/movie/#{i + 1}"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  repos = JSON.parse(response)
  Movie.create(title: repos["title"], overview: repos["overview"], rating: repos["popularity"])
end
