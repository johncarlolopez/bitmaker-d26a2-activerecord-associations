class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.float :wage

      t.timestamps
    end
  end
end
