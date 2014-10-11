class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.float :rating
      t.string :poster

      t.timestamps
    end
  end
end
