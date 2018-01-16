class CreateFilmViewer < ActiveRecord::Migration[5.1]
  def change
    create_table :film_viewers do |t|
      t.references :film, foreign_key: true
      t.references :viewer, foreign_key: true
    end
  end
end
