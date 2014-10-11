class Movie < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :title, scope: :user
  default_scope { order('rating DESC') }

  after_create :fetch_imdb_info

  def fetch_imdb_info
    ImdbWorker.perform_async(self.id)
  end
end
