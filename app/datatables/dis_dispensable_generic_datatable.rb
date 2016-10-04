class DisDispensableGenericDatatable  < AjaxDatatablesRails::Base
  def_delegators :@view, :link_to, :h, :edit_dis_dispensable_generic_path ,:mailto, :dis_dispensable_generic_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [
        'strength',
        
        'strength_doseunit_id',
        
        'per_strength',
        
        'per_doseunit_id',
        
        'name',
        
        'release_status_id',
        
        'status_id',
        
        'datasource_id',
        ]
  end
  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [ 
        'dis_dispensable_generics.strength',
        
        'dis_dispensable_generics.strength_doseunit_id',
        
        'dis_dispensable_generics.per_strength',
        
        'dis_dispensable_generics.per_doseunit_id',
        
        'dis_dispensable_generics.name',
        
        'dis_dispensable_generics.release_status_id',
        
        'dis_dispensable_generics.status_id',
        
        'dis_dispensable_generics.datasource_id',
        ]
  end
  private
  def data
    records.map do |record|
      [
        
         record.strength,
        
         record.strength_doseunit_id,
        
         record.per_strength,
        
         record.per_doseunit_id,
        
         record.name,
        
         record.release_status_id,
        
         record.status_id,
        
         record.datasource_id,
        
        "#{link_to("edit", dis_dispensable_generic_path(record))}, #{link_to("Destroy", dis_dispensable_generic_path(record), method: :delete)}"
      ]
    end
  end
  def get_raw_records
   DisDispensableGeneric.all
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
