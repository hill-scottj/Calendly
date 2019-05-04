# This test script will generate a play board with a 3x3 dimension
require 'watir'
 
# instantiate the browser
chrome = Watir::Browser.new
# go to the link provided
chrome.goto 'https://codepen.io/jshlfts32/full/bjambP/'

# Generate the game board
assert('that entry can be made into the text field') {chrome.iframe(id: 'result').text_field(:id => "number").set '3'}
chrome.iframe(id: 'result').button(:id => "start").click
sleep(2)
