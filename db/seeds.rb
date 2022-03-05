require 'net/http'
require 'json'

20.times do |i|
  url = "http://tmdb.lewagon.com/movie/#{i + 1}"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  repos = JSON.parse(response)
  # IMAGE FETCH PROCESS
  poster_url = "https://image.tmdb.org/t/p/w300#{repos['poster_path']}"
  Movie.create(title: repos["title"], overview: repos["overview"], rating: repos["popularity"], poster_url: poster_url)
end
