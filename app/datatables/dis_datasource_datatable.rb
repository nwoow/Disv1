class DisDatasourceDatatable < AjaxDatatablesRails::Base
   def_delegators :@view, :link_to, :h, :edit_dis_datasource_path ,:mailto, :dis_datasource_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['name']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['dis_datasources.name']
  end

  private

  def data
    records.map do |record|
      [
        record.name,
          "#{link_to("edit", dis_datasource_path(record))}, #{link_to("Destroy", dis_datasource_path(record), method: :delete)}"        # example: record.attribute,
      ]
    end
  end

  def get_raw_records
  DisDatasource.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
