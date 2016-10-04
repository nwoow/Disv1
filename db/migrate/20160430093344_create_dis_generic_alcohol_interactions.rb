class CreateDisGenericAlcoholInteractions < ActiveRecord::Migration
  def change
    create_table :dis_generic_alcohol_interactions do |t|
      t.integer :generic_id
      t.integer :alcohol_interaction_id
      t.integer :status_id
      t.integer :datasource_id

      t.timestamps null: false
    end
  end
end
