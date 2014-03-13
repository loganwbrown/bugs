window.welcome = ()-> alert "hello"

String::capitalize = ()->
  str = @
  str = str.toLowerCase().replace(/^[a-z]{1}/, (letter)-> letter.toUpperCase())

$ -> $('a.shit').starJones()


highlightInput = ->
  $(":text").focus ->
    $(this).css
      border: "5px solid red"
      "font-size": "20px"

    return

  $(":text").blur ->
    $(this).css
      border: "auto"
      "font-size": "12px"

    return

  return
toggleButton = ->
  $("a.btn").click ->
    $(".hidden").toggle()
    false

  return
$ ->
  $("h1").click ->
    alert "world"
    return

  toggleButton()
  highlightInput()
  $(".story").truncate
    width: "auto"
    token: "&hellip;"
    side: "right"
    multiline: false

  $(document).ready ->
    $("#external-events div.external-event").each ->
      eventObject = title: $.trim($(this).text())
      $(this).data "eventObject", eventObject
      $(this).draggable
        zIndex: 999
        revert: true
        revertDuration: 0

      return

    $("#calendar").fullCalendar
      header:
        left: "prev,next today"
        center: "title"
        right: "month,agendaWeek,agendaDay"

      editable: true
      droppable: true
      drop: (date, allDay) ->
        originalEventObject = $(this).data("eventObject")
        copiedEventObject = $.extend({}, originalEventObject)
        copiedEventObject.start = date
        copiedEventObject.allDay = allDay
        $("#calendar").fullCalendar "renderEvent", copiedEventObject, true
        $(this).remove()  if $("#drop-remove").is(":checked")
        return

    return

  return