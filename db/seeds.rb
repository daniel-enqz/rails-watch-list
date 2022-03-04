require "json"
require "rest-client"

10.times do |i|
  response = RestClient.get "http://tmdb.lewagon.com/movie/#{i + 1}.json"
  repos = JSON.parse(response)
  # => repos is an `Array` of `Hashes`.
  Movie.create(title: repos["title"], overview: repos["overview"], rating: repos["rating"])
end

# Movie.create(title: 'Wonder Woman 1984',
#              overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s",
#              poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
#              rating: 6.9
#             )
