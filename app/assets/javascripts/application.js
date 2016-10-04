// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require dataTables/jquery.dataTables
//= require dataTables/bootstrap/3/jquery.dataTables.bootstrap
//= require turbolinks
//= require bootstrap
//= require_tree .
$(document).ready(function() {
  // $('#Additive-Frequencies').dataTable( {
  // "columnDefs": [
  //   { "orderable": false, "targets": 3 }
  // ],
  //   processing: true,
  //   serverSide: true,
  //   ajax: $('#Additive-Frequencies').data('source'),
  //   pagingType: 'full_numbers'
  //  } );
    $('#example').DataTable();
    // $(".js-example-basic-multiple").select2();
  $('#example1').DataTable();
  var app = angular.module('myApp2', []);
  app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://www.w3schools.com/angular/customers.php").then(function (response) {
        $scope.myData = response.data.records;
    });
  });
  app.controller('customersCtrl1', function($scope, $http) {
    $http.get("http://www.w3schools.com/angular/customers.php").then(function (response) {
        $scope.myData1 = response.data.records;
    });
  });


} );
