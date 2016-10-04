class DisGenericAddDatasourceColumn < ActiveRecord::Migration
  def change
    add_column :dis_generics, :datasource_id, :integer
  end
end
