class DisGenericContraceptiveInteractionStatusColumnChange < ActiveRecord::Migration
  def change
    rename_column :dis_generic_contraceptive_interactions, :statud_id, :status_id
  end
end
