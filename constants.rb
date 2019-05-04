#Constants

class TicTacToe
	def initialize
		@chrome = Watir::Browser.new
		@chrome.goto 'https://codepen.io/jshlfts32/full/bjambP/'
	end

	def self.visit
		new
	end

	def inputbox
		@chrome.iframe(id: 'result').text_field(:id => "number")
	end

	def button
		@chrome.iframe(id: 'result').button(:id => "start")
	end

	def table
		@chrome.iframe(id: 'result').table(id: 'table')
	end

	def div
		@chrome.iframe(id: 'result').div(:id => "endgame")
	end

	def grid_size=(size)
		@grid = size
	end

	def grid_size
		@grid
	end

	def refresh
		@chrome.refresh
	end

	def playgame
		i = 0
		loop do
			i+=1
			player = 'X'
			@chrome.iframe(id: 'result').table(id: 'table').tr(index: rand(@grid.to_i)).td(index: rand(@grid.to_i)).click
			sleep(1)
			if i % 2 == 0
				player = 'O'
			else
				player = 'X'
			end
			if @chrome.iframe(id: 'result').div(:id => "endgame").text.include?("Congratulations player " + player + "! You've won. Refresh to play again!")
				break
			end
		end
	end
end