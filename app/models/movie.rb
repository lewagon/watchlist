class Movie < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :title, scope: :user
  default_scope { order('rating DESC') }

  has_attached_file :poster,
    styles: { medium: "214x317>", thumb: "100x148>" }

  validates_attachment_content_type :poster,
    content_type: /\Aimage\/.*\z/

  after_create :fetch_imdb_info

  def fetch_imdb_info
    ImdbWorker.perform_async(self.id)
  end
end
