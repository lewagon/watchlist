class RemovePosterFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :poster
  end
end
