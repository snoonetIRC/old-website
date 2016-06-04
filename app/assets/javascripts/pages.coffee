class ChatOverlay
  constructor: ->
    @_setupElements()
    @_setupEvents()

  show: -> # TODO: Setup Kiwi
    @$overlay.addClass("overlay-open")

  hide: -> # TODO: Teardown Kiwi
    @$overlay.removeClass("overlay-open")

  _setupElements: ->
    @$popularChannels = $(".pages-root .popular-channels")
    @$popularChannelLinks = @$popularChannels.find(".content a")
    @$overlay = @$popularChannels.find(".overlay")
    @$overlayClose = @$overlay.find(".close")

  _setupEvents: ->
    @$popularChannelLinks.on "click", => @show()
    @$overlayClose.on "click", => @hide()

$ ->
  chatOverlay = new ChatOverlay()
