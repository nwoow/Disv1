class DisDoseunitDatatable  < AjaxDatatablesRails::Base
  def_delegators :@view, :link_to, :h, :edit_dis_doseunit_path ,:mailto, :dis_doseunit_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [
        'name',
        
        'abbrev',
        
        'is_common',
        
        'dosetype_id',
        
        'status_id',
        ]
  end
  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [ 
        'dis_doseunits.name',
        
        'dis_doseunits.abbrev',
        
        'dis_doseunits.is_common',
        
        'dis_doseunits.dosetype_id',
        
        'dis_doseunits.status_id',
        ]
  end
  private
  def data
    records.map do |record|
      [
        
         record.name,
        
         record.abbrev,
        
         record.is_common,
        
         record.dosetype_id,
        
         record.status_id,
        
        "#{link_to("edit", dis_doseunit_path(record))}, #{link_to("Destroy", dis_doseunit_path(record), method: :delete)}"
      ]
    end
  end
  def get_raw_records
   DisDoseunit.all
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
