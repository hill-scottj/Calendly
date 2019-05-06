# This test case validates that all UI elements are present in the web interface.
# Output is generated to the RUBY console.

require 'watir'
 
# instantiate the browser
chrome = Watir::Browser.new
# go to the link provided
chrome.goto 'https://codepen.io/jshlfts32/full/bjambP/'

#locate UI element fields
puts chrome.iframe(id: 'result').text_field(:id => "number").exists?
puts chrome.iframe(id: 'result').button(:id => "start").exists?
puts chrome.iframe(id: 'result').button(:id => "start").enabled?
puts chrome.iframe(id: 'result').text_field(:id => "number").placeholder.include?('Enter a number to generate a tic tac toe board')