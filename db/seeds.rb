# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

List.destroy_all
Movie.destroy_all
Bookmark.destroy_all

image_url = 'https://image.tmdb.org/t/p/w500/'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)

all_movies = movies["results"]

all_movies.each do |movie|
  Movie.create(
    title: movie['original_title'],
    overview: movie['overview'],
    poster_url: image_url + movie['poster_path'],
    rating: movie['vote_average']
  )
end

list_names = %w[science\ fiction fantasy polar action romance]

list_names.each do |name|
  List.create(
    name: name
  )
end
