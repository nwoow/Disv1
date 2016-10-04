class CreateDisDoseperiods < ActiveRecord::Migration
  def change
    create_table :dis_doseperiods do |t|
      t.string :name
      t.boolean :is_common
      t.string :abbrev
      t.integer :status_id
      t.integer :datasource_id

      t.timestamps null: false
    end
  end
end
