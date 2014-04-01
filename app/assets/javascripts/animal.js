$(document).ready(function(){
  var clicks = 0;
  $('.sighting').click(function(){
    clicks ++;
    if (clicks < 3){
      var clicked = $(this).attr('id')
      var name = $(this).text()
      clicked = clicked.split('-')
      var type = clicked[0]
      var id = clicked[1]
      if (type === 'species'){
        $('#newSightings').append('<tr></tr>')
        $('#newSightings tr').last().append('<td class='+  id + '>' + name + '</td>')
      } else if ( type === 'region'){
        $('#newSightings tr').last().append('<td class=' + id + '>' + name + '</td>')
        $('#newSightings tr').last().append('<td ><textarea class="date"></textarea></td><td><textarea class="time"></textarea></td><td><button class="addSighting">Add Sighting</button></td>')
      };
    } else {
      return alert('please submit');
    };
  })

  $("body").on('click','.addSighting',function(){

    var animal_id = $('#newSightings tr td:first-child').last().attr('class');
    var region_id = $('#newSightings tr td:nth-child(2)').last().attr('class');
    var sighting_date = $('.date').val();
    var sighting_time = $('.time').val();
    $('#animal_id').attr('value', animal_id)
    $('#region_id').attr('value', region_id)
    $('#date').attr('value', sighting_date)
    $('#time').attr('value', sighting_time)
    $('form#sightingsPost').submit();
  })

  $('body').one('click', '.edit',function(){
    var animal_name = $(this).parent('li').find('.sighting').text()
    var animal_id = $(this).parent('li').attr('class')
    $(this).append('<form action="/animals/'+ animal_id +'"  method="post">'
  + ' <input name="_method" type="hidden" value="patch">'
  + ' <input for="animal_species" name="animal[species]" type="text" value="'+ animal_name + '">'
  + '<button>Update Species</button>'
  + '</form>')
  });

  $('#byDate').click(function(){
    $('.reports').html('<form action="/sightings" method="get">'
  + '<label for="sightings_start_date">Start date</label>'
  + '<input id="sightings_start_date" name="sightings[start_date]" type="date"></br>'
  + '<label for="sightings_end_date">End date</label>'
  + '<input id="sightings_end_date" name="sightings[end_date]" type="date"></br>'
  + '<button>Run report</button>'
+ '</form>')
  });


  $('#bySpecies').click(function(){
    $('#search_species').show()
    $('#search_regions').hide()

  })

  $('#byRegion').click(function(){
    $('#search_regions').show()
    $('#search_species').hide()
  })



});
