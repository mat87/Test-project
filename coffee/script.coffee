# Add "Back to top" button on bottom-right side of page
$(window).ready ->
  jQuery.goup location: 'right', containerSize: 60, trigger: 400, arrowColor: '#1fa67a', containerColor: '#333'
# When F5 pressed or page has been reloaded <div> content is not missed
$(document).ready ->
   href = location.hash.slice(1)
   if href is 'kontakt'
     $('#changeableContent').load 'kontakt.html', ->
       submitBtnOff()
   else $('#changeableContent').load 'beers.html #' + href
# Load <div> from external beers.html file in to <div> in index.html
# Enables "Wyślij" buton when nick, email and message inputs have been fullfield
# Otherwise it is disabled
$(window).on 'hashchange', ->
	href = location.hash.slice(1)
	switch href
		when 'kontakt' then $('#changeableContent').load 'kontakt.html', ->
		 submitBtnOff()
		else $('#changeableContent').load 'beers.html #' + href

submitBtnOff = ->
  $('#submit-button').prop 'disabled', true
  $('#name, #email, #message').on 'keyup', ->
    if $('#name').val() is '' or $('#email').val() is '' or $('#message').val() is ''
      $('#submit-button').prop 'disabled', true
    else
      $('#submit-button').prop 'disabled', false
