class <%= @datatable_name %>Datatable  < AjaxDatatablesRails::Base
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= []
  end
  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= []
  end
  private
  def data
    records.map do |record|
      [
        <%
        name1.each do |action| %>
         reocrd.<%= action %>,
        <% end %>
      ]
    end
  end
  def get_raw_records
   <%= @datatable_name %>.all
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
