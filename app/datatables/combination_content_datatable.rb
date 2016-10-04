class CombinationContentDatatable < AjaxDatatablesRails::Base
  # uncomment the appropriate paginator module,
   # depending on gems available in your project.
  # include AjaxDatatablesRails::Extensions::Kaminari
    include AjaxDatatablesRails::Extensions::WillPaginate
   # include AjaxDatatablesRails::Extensions::SimplePaginator
   def_delegators :@view, :link_to, :h, :edit_combination_content_path ,:mailto, :combination_content_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['combination_contents_id','combination_generic_id']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['combination_contents.combination_contents_id','combination_contents.uom_id']
  end

  private

  def data
    records.map do |record|
      [
        record.combination_contents_id,
        record.combination_generic_id,
        record.combination_contents_id,
        record.constituent_generic_id,
        record.constituent_strength,
        record.uom_id,
        record.combination_dose_id,
        record.data_source_id,
          "#{link_to("edit", edit_combination_content_path(record))}, #{link_to("Destroy", combination_content_path(record), method: :delete)}"
      ]
    end
  end

  def get_raw_records
  CombinationContent.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
