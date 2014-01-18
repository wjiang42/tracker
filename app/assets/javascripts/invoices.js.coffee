# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#invoice_payment_type').change ->
    if $(this).val() == "Oracle"
      $('#oracleString').show('Blind')
    else
      $('#oracleString').hide('Blind')

@chooseLinePreset = (id) ->
  if $("#invoice-line-preset-" + id).val() != ""
    selected = $("#invoice-line-preset-" + id + " option:selected").first()
    $("#invoice_invoice_lines_attributes_" + id + "_category").val(selected.data('category'))
    $("#invoice_invoice_lines_attributes_" + id + "_memo").val(selected.data('memo'))
    $("#invoice_invoice_lines_attributes_" + id + "_quantity").val("1")
    if $("#invoice_recognized").is(":checked")
      $("#invoice_invoice_lines_attributes_" + id + "_price").val(selected.data('recprice'))
    else
      $("#invoice_invoice_lines_attributes_" + id + "_price").val(selected.data('unrecprice'))

@toggleNotes = (id) ->
  note = $("#notes" + id)
  link = $("#notesToggle" + id)
  if note.css("display") == "none"
    note.css("display","block")
    link.html("^")
  else
    note.css("display","none")
    link.html("V")

$ ->
  $("a.replace_field").click ->
    new_id = new Date().getTime()
    regexp = new RegExp("new_" + $(this).data("association"), "g")
    $("#" + $(this).data("repid")).html($(this).data("content").replace(regexp, new_id))