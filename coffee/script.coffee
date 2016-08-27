# Add "Back to top" button on right side of page
$(window).ready ->
	jQuery.goup location: 'right', containerSize: 60, trigger: 400, arrowColor: '#1fa67a', containerColor: '#333'
# Load <div> from external beers.html file in to <div> in index.html
# Enables "Wyślij" buton when nick, email and message inputs have been fullfield
# Otherwise it is disabled
$(window).on 'hashchange', ->
	href = location.hash.slice(1)
	switch href
		when 'kontakt' then $('#changeableContent').load 'kontakt.html', ->
				$('#submit-button').prop 'disabled', true
				$('#name, #email, #message').on 'keyup', ->
					if $('#name').val() is '' or $('#email').val() is '' or $('#message').val() is ''
    				$('#submit-button').prop 'disabled', true
  				else
    				$('#submit-button').prop 'disabled', false
		else $('#changeableContent').load 'beers.html #' + href
