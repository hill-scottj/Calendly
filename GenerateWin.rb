# This test script will generate a 3x3 play board and run through an automated 
# game of Tic Tac Toe. The winner of this game should be X

require 'watir-webdriver'
 
# instantiate the browser
chrome = Watir::Browser.new
# go to the link provided
chrome.goto 'https://codepen.io/jshlfts32/full/bjambP/'

# Generate the game board
chrome.iframe(id: 'result').text_field(:id => "number").set '3'
chrome.iframe(id: 'result').button(:id => "start").click

# Play Tic Tac Toe!
chrome.iframe(id: 'result').table(id: 'table').tr(index: 0).td(index: 0).click
sleep(1)
chrome.iframe(id: 'result').table(id: 'table').tr(index: 1).td(index: 0).click
sleep(1)
chrome.iframe(id: 'result').table(id: 'table').tr(index: 0).td(index: 2).click
sleep(1)
chrome.iframe(id: 'result').table(id: 'table').tr(index: 1).td(index: 1).click
sleep(1)
chrome.iframe(id: 'result').table(id: 'table').tr(index: 0).td(index: 1).click
sleep(1)
puts chrome.iframe(id: 'result').div(:id => "endgame").text.include?("Congratulations player X! You've won. Refresh to play again!")
sleep(2)

# Refresh the browser page and validate that another board can be generated
chrome.refresh

chrome.iframe(id: 'result').text_field(:id => "number").set '3'
chrome.iframe(id: 'result').button(:id => "start").click
sleep(1)