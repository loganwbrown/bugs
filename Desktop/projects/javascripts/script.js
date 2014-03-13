// var direction = prompt("Which way do you want to drive? (N, S, E, W)");
// switch (direction)
// {
// case "N":
//   alert("You are going to Utah");
//   break;
// case "S":
//   alert("You are going to Arizona");
//   break;
// case "E":
//   alert("You are going to Alabama");
//   break;
// case "W":
//   alert("You are going to Cali");
//   break;
//  }

 //window loading - site has connected, but still downloading stuff
 //document reading - everything is downloading and ready to going
// callback function
// annonymous function
 //  $(function() {
 //    console.log('document is now ready');
 // });

$(function() {
  $('h1').click(function() {
    alert('world');
  });

  toggleButton();
  highlightInput();

  $('.story').truncate({
    width: 'auto',
    token: '&hellip;',
    side: 'right',
    multiline: false
  });

  $(document).ready(function() {
  
    // $('a.shit').starJones();
    
    /* initialize the external events
    -----------------------------------------------------------------*/
  
    $('#external-events div.external-event').each(function() {
    
      // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
      // it doesn't need to have a start or end
      var eventObject = {
        title: $.trim($(this).text()) // use the element's text as the event title
      };
      
      // store the Event Object in the DOM element so we can get to it later
      $(this).data('eventObject', eventObject);
      
      // make the event draggable using jQuery UI
      $(this).draggable({
        zIndex: 999,
        revert: true,      // will cause the event to go back to its
        revertDuration: 0  //  original position after the drag
      });
      
    });
  
  
    /* initialize the calendar
    -----------------------------------------------------------------*/
    
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      editable: true,
      droppable: true, // this allows things to be dropped onto the calendar !!!
      drop: function(date, allDay) { // this function is called when something is dropped
      
        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject');
        
        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject);
        
        // assign it the date that was reported
        copiedEventObject.start = date;
        copiedEventObject.allDay = allDay;
        
        // render the event on the calendar
        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
        
        // is the "remove after drop" checkbox checked?
        if ($('#drop-remove').is(':checked')) {
          // if so, remove the element from the "Draggable Events" list
          $(this).remove();
        }
        
      }
    });
    
    
  });



});

function highlightInput() {
  $(':text').focus(function() {
    $(this).css({
      'border': '5px solid red',
      'font-size': '20px'
    });
  });

  $(':text').blur(function() {
    $(this).css({
      'border': 'auto',
      'font-size': '12px'
    });
  });
}

function toggleButton() {
  $('a.btn').click(function(){
    // if($('div:hidden').length > 0) {
    //   var hiddenElements = $('div:hidden');
    //   hiddenElements.addClass('unhidden');
    //   hiddenElements.show();
    //   $(this).text('Hide');

    // } else {
    //   var shownElements = $('div.unhidden');
    //   shownElements.removeClass('unhidden');
    //   shownElements.hide();
    //   $(this).text('Show');
    // }
    $('.hidden').toggle();
    
    return false;
  });
}

