class CreateRecords < ActiveRecord::Migration
  def up
    create_table :records do |t|
      t.date :data
      t.integer :total_km, :null => false
      t.decimal :valor
      t.boolean :status, :default => false

      t.timestamps null: false
    end
  end

  def down
    drop_table :records
  end
end
