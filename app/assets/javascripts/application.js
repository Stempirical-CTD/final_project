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
//= require_tree .
//= require jquery.raty
//= require ratyrate

$(function () {

    if ($('.experiment').length) {
      var material = $('.material').html();

      // $('.unordered-list').sortable();
      // $('.unordered-list').disableSelection();

      $('.unordered-list').on('click', '.add-material-btn', function (e) {
        e.preventDefault();
        e.stopPropagation();

      material = material.replace(/\[[0-9]+\]/g, '[' + $('.unordered-list li').length + ']')
      .replace(/_[0-9]+_/g, '_' + $('.unordered-list li').length + '_');
     console.log('doin stuff');
     
      $('.unordered-list').append('<li>' + material + '</li>')
 })
 
 }
 
 });
