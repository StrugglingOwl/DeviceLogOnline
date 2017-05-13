class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.date :date
      t.string :room_id
      t.string :device_name
      t.string :device_model
      t.string :serial_number
      t.text :summary
      t.text :resolution
      t.boolean :result
      t.text :remarks

      t.timestamps
    end
  end
end
