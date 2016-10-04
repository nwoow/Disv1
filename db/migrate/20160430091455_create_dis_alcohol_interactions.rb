class CreateDisAlcoholInteractions < ActiveRecord::Migration
  def change
    create_table :dis_alcohol_interactions do |t|
      t.string :name
      t.string :description
      t.integer :datasource_id

      t.timestamps null: false
    end
  end
end
