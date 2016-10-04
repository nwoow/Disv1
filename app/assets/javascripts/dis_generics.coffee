$ ->
  $('#DisGeneric').dataTable
    'columnDefs': [ {
      'orderable': false
      'targets': 1
    } ]
    processing: true
    serverSide: true
    ajax: $('#DisGeneric').data('source')
    pagingType: 'full_numbers'
