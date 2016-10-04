class CreateDisDrugDrugInteractions < ActiveRecord::Migration
  def change
    create_table :dis_drug_drug_interactions do |t|
      t.integer :generic_id1
      t.integer :generic_id2
      t.string :description
      t.integer :severity
      t.integer :status_id
      t.integer :datasource_id

      t.timestamps null: false
    end
  end
end
