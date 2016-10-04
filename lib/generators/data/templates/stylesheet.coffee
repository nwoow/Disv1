$ ->
  $('#<%= name %>').dataTable
    'columnDefs': [ {
      'orderable': false
      'targets': 1
    } ]
    processing: true
    serverSide: true
    ajax: $('#<%= name %>').data('source')
    pagingType: 'full_numbers'
