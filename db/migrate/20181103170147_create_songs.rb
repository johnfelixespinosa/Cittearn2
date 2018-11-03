class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.text :title
      t.text :artist
      t.text :difficulty
      t.text :lyrics

      t.timestamps
    end
  end
end
