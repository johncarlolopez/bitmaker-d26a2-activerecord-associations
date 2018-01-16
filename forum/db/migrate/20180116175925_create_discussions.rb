class CreateDiscussions < ActiveRecord::Migration[5.1]
  def change
    create_table :discussions do |t|
      t.string :name
      t.text :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
