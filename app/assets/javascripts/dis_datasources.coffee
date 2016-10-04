# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#Dis-Datasources').dataTable
    'columnDefs': [ {
      'orderable': false
      'targets': 1
    } ]
    processing: true
    serverSide: true
    ajax: $('#Dis-Datasources').data('source')
    pagingType: 'full_numbers'
