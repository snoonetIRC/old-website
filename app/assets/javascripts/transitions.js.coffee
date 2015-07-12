$.fn.spin = (opts) ->
  @each ->
    $this = $(this)
    data = $this.data()
    if data.spinner
      data.spinner.stop()
      delete data.spinner
    if opts isnt false
      data.spinner = new Spinner($.extend(
        color: $this.css("color")
      , opts)).spin(this)

  this

$(document).on 'page:fetch', ->
  $('#main').css('opacity', '0.1')
  $('#spin-container').spin()

$(document).on 'page:change', ->
  $('#main').css('opacity', '')
  $('#spin-container').stop()
