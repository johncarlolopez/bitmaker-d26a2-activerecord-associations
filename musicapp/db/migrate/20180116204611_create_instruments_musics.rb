class CreateInstrumentsMusics < ActiveRecord::Migration[5.1]
  def change
    create_table :instruments_musics do |t|
      t.string :name
      t.references :instrument, foreign_key: true
      t.references :music, foreign_key: true
    end
  end
end
