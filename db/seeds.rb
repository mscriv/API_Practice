

require 'net/http'
require 'json'
require 'active_support'
require 'active_support/all'


movie = ['goldfinger', 'thunderball', 'octopussy', 'skyfall', 'moonraker', 'the world is not enough', 'for your eyes only', 'quantum of solace']


for m in movie do
  QUERY_URL = URI("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=#{ENV['API_KEY']}&q=#{URI.escape(m)}3&page_limit=1")

url = QUERY_URL
raw_json = Net::HTTP.get(url)

search_result = JSON.parse(raw_json)

s = search_result["movies"]
#puts s.first["synopsis"]


Movie.create(
    title: s.first["title"],
    poster:  s.first["posters"]["detailed"],
    year:  s.first["year"],
    runtime: s.first["runtime"],
    synopsis: s.first["synopsis"]

)

end