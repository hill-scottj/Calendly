# This test script will generate a second play board to validate that it does
# not cause issues with the application
require 'watir'
 
# instantiate the browser
chrome = Watir::Browser.new
# go to the link provided
chrome.goto 'https://codepen.io/jshlfts32/full/bjambP/'

# Generate the game board
chrome.iframe(id: 'result').text_field(:id => "number").set '3'
chrome.iframe(id: 'result').button(:id => "start").click
sleep(2)
chrome.iframe(id: 'result').text_field(:id => "number").set '5'
chrome.iframe(id: 'result').button(:id => "start").click
sleep(2)