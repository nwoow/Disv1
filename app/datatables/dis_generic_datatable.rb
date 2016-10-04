class DisGenericDatatable  < AjaxDatatablesRails::Base
  def_delegators :@view, :link_to, :h, :edit_dis_generic_path ,:mailto, :dis_generic_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [
        'name',
        
        'is_combination',
        
        'rxcui',
        
        'status_id',
        
        'food_id',
        
        'hepatic_id',
        
        'renal_imp_id',
        
        'release_status_id',
        
        'is_essential',
        ]
  end
  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [ 
        'dis_generics.name',
        
        'dis_generics.is_combination',
        
        'dis_generics.rxcui',
        
        'dis_generics.status_id',
        
        'dis_generics.food_id',
        
        'dis_generics.hepatic_id',
        
        'dis_generics.renal_imp_id',
        
        'dis_generics.release_status_id',
        
        'dis_generics.is_essential',
        ]
  end
  private
  def data
    records.map do |record|
      [
        
         record.name,
        
         record.is_combination,
        
         record.rxcui,
        
         record.status_id,
        
         record.food_id,
        
         record.hepatic_id,
        
         record.renal_imp_id,
        
         record.release_status_id,
        
         record.is_essential,
        
        "#{link_to("edit", dis_generic_path(record))}, #{link_to("Destroy", dis_generic_path(record), method: :delete)}"
      ]
    end
  end
  def get_raw_records
   DisGeneric.all
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
