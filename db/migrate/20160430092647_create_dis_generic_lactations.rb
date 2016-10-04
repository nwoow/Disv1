class CreateDisGenericLactations < ActiveRecord::Migration
  def change
    create_table :dis_generic_lactations do |t|
      t.integer :generic_id
      t.string :description
      t.integer :datasource_id
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
