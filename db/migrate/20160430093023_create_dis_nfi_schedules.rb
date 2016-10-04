class CreateDisNfiSchedules < ActiveRecord::Migration
  def change
    create_table :dis_nfi_schedules do |t|
      t.string :name
      t.string :description
      t.integer :datasource_id
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
