jQuery ->
  $('#sidebar .category li a').pjax('#main')
  $('#main')
    .on('pjax:start', ->
        console.log('pjax:start')
        $(this).css('opacity', '0.0')
      )
    .on('pjax:end', ->
        console.log('pjax:end')
        $(this).css('opacity', '1.0')
      )
