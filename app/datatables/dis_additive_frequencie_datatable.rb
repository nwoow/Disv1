class DisAdditiveFrequencieDatatable < AjaxDatatablesRails::Base
   def_delegators :@view, :link_to, :h, :edit_dis_additive_frequency_path ,:mailto, :dis_additive_frequency_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['name','frequency_value','status_id']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['dis_additive_frequencies.name','dis_additive_frequencies.frequency_value', 'dis_additive_frequencies.status_id']
  end

  private

  def data
    records.map do |record|
      [
        record.name,
        record.frequency_value,
        record.status_id,
          "#{link_to("edit", dis_additive_frequency_path(record))}, #{link_to("Destroy", dis_additive_frequency_path(record), method: :delete)}"
      ]
    end
  end

  def get_raw_records
DisAdditiveFrequency.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
