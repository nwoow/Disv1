class CreateDisGenericContraceptiveInteractions < ActiveRecord::Migration
  def change
    create_table :dis_generic_contraceptive_interactions do |t|
      t.integer :generic_id
      t.string :description
      t.integer :datasource_id
      t.integer :statud_id

      t.timestamps null: false
    end
  end
end
