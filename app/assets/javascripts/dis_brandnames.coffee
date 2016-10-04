# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#Brandnames').dataTable
    'columnDefs': [ {
      'orderable': false
      'targets': 3
    } ]
    processing: true
    serverSide: true
    ajax: $('#Brandnames').data('source')
    pagingType: 'full_numbers'
