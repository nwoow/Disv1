class CreateDisVaccineTypes < ActiveRecord::Migration
  def change
    create_table :dis_vaccine_types do |t|
      t.string :name
      t.string :description
      t.boolean :has_packagedrug
      t.integer :status_id
      t.integer :datasource_id

      t.timestamps null: false
    end
  end
end
