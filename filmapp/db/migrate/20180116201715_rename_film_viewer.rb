class RenameFilmViewer < ActiveRecord::Migration[5.1]
  def change
    rename_table :film_viewers, :films_viewers
  end
end
