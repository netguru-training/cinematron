$ ->
  # $('#rows').on "change", ->
  #   $rows = $(this).val()
  #   console.log $rows

  # $('#columns').on "change", ->
  #   $columns = $(this).val()
  #   console.log $columns

  $('#submit_details').click (e) ->
    e.preventDefault()
    $rows = parseInt($('#rows').val(), 10)
    $columns = parseInt($('#columns').val(), 10)
    layout = ''
    for $rows in [$rows-1..0] by -1
      row = '<div class="row">'
      layout += row
      layout += Array($columns + 1).join(seatTemplate())
      layout += '</div>'

    $('#layout').html(layout)

  $('#layout').on 'click', '.seat', (e) ->

    if parseInt($(this).children().val() == 1)
      $(this).children().val(0)
    else
      console.log 'test'
      $(this).children().val(1)

    unless $(this).hasClass('alley')
      $(this).addClass('alley')
    else
      $(this).removeClass('alley')



  seatTemplate = () ->
    '<div class="seat"><input type="hidden" value=1 class="seat_type" /></div>'