class CreateDisGenericHepaticImps < ActiveRecord::Migration
  def change
    create_table :dis_generic_hepatic_imps do |t|
      t.integer :generic_id
      t.string :warning
      t.string :description
      t.integer :status_id
      t.integer :datasource_id

      t.timestamps null: false
    end
  end
end
