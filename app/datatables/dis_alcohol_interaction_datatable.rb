class DisAlcoholInteractionDatatable < AjaxDatatablesRails::Base
   def_delegators :@view, :link_to, :h, :edit_dis_alcohol_interaction_path ,:mailto, :dis_alcohol_interaction_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['name', 'description', 'datasource_id']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['dis_alcohol_interactions.name','dis_alcohol_interactions.description','dis_alcohol_interactions.datasource_id']
  end

  private

  def data
    records.map do |record|
      [
      record.name,
      record.description,
      record.datasource_id,
        "#{link_to("edit", dis_alcohol_interaction_path(record))}, #{link_to("Destroy", dis_alcohol_interaction_path(record), method: :delete)}"        # example: record.attribute,
      ]
    end
  end

  def get_raw_records
   DisAlcoholInteraction.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
