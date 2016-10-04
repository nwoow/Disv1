class CreateDisGenericMonographs < ActiveRecord::Migration
  def change
    create_table :dis_generic_monographs do |t|
      t.integer :generic_id
      t.string :dose
      t.string :contraindication
      t.string :precaution
      t.string :adverse_effect
      t.string :storage
      t.integer :datasource_id
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
