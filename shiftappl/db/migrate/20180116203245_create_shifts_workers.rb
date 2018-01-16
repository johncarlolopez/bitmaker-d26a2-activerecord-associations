class CreateShiftsWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts_workers do |t|
      t.references :shift, foreign_key: true
      t.references :worker, foreign_key: true
    end
  end
end
