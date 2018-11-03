class AddSongIdToChords < ActiveRecord::Migration[5.2]
  def change
    add_column :chords, :song_id, :integer
  end
end
