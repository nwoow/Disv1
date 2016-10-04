class <%= @datatable_name %>Datatable  < AjaxDatatablesRails::Base
  def_delegators :@view, :link_to, :h, :edit_<%= file_name %>_path ,:mailto, :<%= file_name %>_path, :other_method
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= [<%
        name1.each do |action| %>
        '<%= action %>',
        <% end %>]
  end
  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= [ <%
        name1.each do |action| %>
        '<%=file_name %>s.<%= action %>',
        <% end %>]
  end
  private
  def data
    records.map do |record|
      [
        <%
        name1.each do |action| %>
         record.<%= action %>,
        <% end %>
        "#{link_to("edit", <%= file_name %>_path(record))}, #{link_to("Destroy", <%=file_name %>_path(record), method: :delete)}"
      ]
    end
  end
  def get_raw_records
   <%= @datatable_name %>.all
  end
  # ==== Insert 'presenter'-like methods below if necessary
end
