class CreateDisDatasources < ActiveRecord::Migration
  def change
    create_table :dis_datasources do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
