class SaysController < ApplicationController

	def index
		session[:visits] = 0
		puts "Index - Session is at: #{session[:visits]}"
		render text: "What do you want me to say?"
	end

end
