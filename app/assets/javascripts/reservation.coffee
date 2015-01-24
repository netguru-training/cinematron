$ ->
  $('.seat').click ->
    seatId = $(@).data('seat-id')
    showModal(seatId)

  showModal = (id) ->
    $(id).modal('show')
