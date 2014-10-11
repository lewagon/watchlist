require "imdb"

class ImdbWorker
  include Sidekiq::Worker

  def perform(movie_id)
    movie = Movie.find(movie_id)
    candidates = Imdb::Search.new(movie.title).movies
    imdb_movie = candidates.first
    movie.rating = imdb_movie.rating
    movie.save!
  end
end