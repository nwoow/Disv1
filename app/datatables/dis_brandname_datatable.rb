class DisBrandnameDatatable < AjaxDatatablesRails::Base
   def_delegators :@view, :link_to, :h, :edit_dis_brandname_path ,:mailto, :dis_brandname_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['name', 'release_status_id', 'status_id']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['dis_brandnames.name', 'dis_brandnames.release_status_id', 'dis_brandnames.status_id']
  end

  private

  def data
    records.map do |record|
      [
        record.name,
        record.release_status_id,
        record.status_id,
          "#{link_to("edit", dis_brandname_path(record))}, #{link_to("Destroy", dis_brandname_path(record), method: :delete)}"        # example: record.attribute,
      ]
    end
  end

  def get_raw_records
    # insert query here
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
