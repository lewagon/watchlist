class Movie < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :title, scope: :user
end
