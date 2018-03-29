# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  jQuery ->
    comunas = undefined
    $('#row_subcategory').hide()
    comunas = $('#product_subcategory_id').html()
    $('#product_category_id').change ->
      escaped_region = undefined
      options = undefined
      region = undefined
      region = $('#product_category_id :selected').text()
      escaped_region = region.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
      options = $(comunas).filter('optgroup[label=\'' + escaped_region + '\']').html()
      if options
        $('#product_subcategory_id').html options
        $('#row_subcategory').show()
      else
        $('#product_subcategory_id').empty()
        $('#row_subcategory').hide()
