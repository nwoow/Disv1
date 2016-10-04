$ ->
  $('#DisDoseformDoseunitLink').dataTable
    'columnDefs': [ {
      'orderable': false
      'targets': 1
    } ]
    processing: true
    serverSide: true
    ajax: $('#DisDoseformDoseunitLink').data('source')
    pagingType: 'full_numbers'
