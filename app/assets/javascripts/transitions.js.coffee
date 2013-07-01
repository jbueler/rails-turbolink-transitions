$document = $(document)
$tmp = false

page_fetched = (e) ->
  console.log("page_fetched")
  $tmp = $('.current.content').html()
  $(".previous.content").removeClass('in')

page_received = (e) ->
  console.log("page_received")

page_changed = (e) ->
  console.log("page_changed")
  $(".previous.content").addClass('in')
  $(".current.content").addClass('out')
  
page_loaded = (e) ->
  console.log("page_loaded")
  
  $(".previous.content").on('webkitTransitionEnd',->
    $(this).html("")
  )
  
  $(".previous.content").append($tmp).addClass('out').removeClass('in')
  $(".current.content").addClass('in').removeClass('out')

page_restored = (e) ->
  $(".previous.content").append($tmp).addClass('out').removeClass('in')
  $(".current.content").addClass('in').removeClass('out')


$document.on('page:fetch',page_fetched)
$document.on('page:receive',page_received)
$document.on('page:change',page_changed)
$document.on('page:load',page_loaded)
$document.on('page:restore',page_restored)
