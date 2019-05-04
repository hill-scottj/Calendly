# This test script will generate a 3x3 play board and run through an automated 
# game of Tic Tac Toe. The winner of this game should be X

require 'watir'
require './constants.rb'

testrun = TicTacToe.visit
testrun.grid_size = "3"
 
# instantiate the browser
#testrun = Watir::Browser.new
# go to the link provided
#testrun.goto 'https://codepen.io/jshlfts32/full/bjambP/'

# Generate the game board
testrun.inputbox.set testrun.grid_size
testrun.button.click

# Play Tic Tac Toe!
testrun.table.tr(index: 0).td(index: 0).click
sleep(1)
testrun.table.tr(index: 1).td(index: 0).click
sleep(1)
testrun.table.tr(index: 0).td(index: 2).click
sleep(1)
testrun.table.tr(index: 1).td(index: 1).click
sleep(1)
testrun.table.tr(index: 0).td(index: 1).click
sleep(1)
puts testrun.div.text.include?("Congratulations player X! You've won. Refresh to play again!")
sleep(2)

# Refresh the browser page and validate that another board can be generated
testrun.refresh

testrun.inputbox.set '3'
testrun.button.click
sleep(1)