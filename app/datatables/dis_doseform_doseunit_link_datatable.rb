class DisDoseformDoseunitLinkDatatable  < AjaxDatatablesRails::Base
  def_delegators :@view, :link_to, :h, :edit_dis_doseform_doseunit_link_path ,:mailto, :dis_doseform_doseunit_link_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [
        'doseform_id',

        'doseunit_id',

        'is_default',

        'status_id',

        'datasource_id',
        ]
  end
  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [
        'dis_doseform_doseunit_links.doseform_id',

        'dis_doseform_doseunit_links.doseunit_id',

        'dis_doseform_doseunit_links.is_default',

        'dis_doseform_doseunit_links.status_id',

        'dis_doseform_doseunit_links.datasource_id',
        ]
  end
  private
  def data
    records.map do |record|
      [

         record.doseform_id,

         record.doseunit_id,

         record.is_default,

         record.status_id,

         record.datasource_id,

        "#{link_to("edit", dis_doseform_doseunit_link_path(record))}, #{link_to("Destroy", dis_doseform_doseunit_link_path(record), method: :delete)}"
      ]
    end
  end
  def get_raw_records
   DisDoseformDoseunitLink.all
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
