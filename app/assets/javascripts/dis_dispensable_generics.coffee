$ ->
  $('#DisDispensableGeneric').dataTable
    'columnDefs': [ {
      'orderable': false
      'targets': 1
    } ]
    processing: true
    serverSide: true
    ajax: $('#DisDispensableGeneric').data('source')
    pagingType: 'full_numbers'
