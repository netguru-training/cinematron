$ ->
  $('#submit_details').click (e) ->
    e.preventDefault()
    $rows = parseInt($('#rows').val(), 10)
    $columns = parseInt($('#columns').val(), 10)
    layout = ''
    for $rows in [$rows-1..0] by -1
      row = '<div class="row">'
      layout += row
      layout += Array($columns + 1).join(seatTemplate($rows))
      layout += '</div>'

    $('#layout').html(layout)

  $('#layout').on 'click', '.seat', (e) ->

    if $(this).hasClass('alley')
      $(this).removeClass('alley')
      $(this).children().val(1)
    else
      $(this).addClass('alley')
      $(this).children().val(0)

  seatTemplate = (row_id) ->
    "<div class='seat'><input name='layout[#{row_id}][]' type='hidden' value=1 class='seat_type' /></div>"
