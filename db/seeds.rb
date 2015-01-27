# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
    poster:  s.first["posters"]["detailed"]

)

end