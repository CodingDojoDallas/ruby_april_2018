class SaysController < ApplicationController

	def index
		session[:visits] = 0
		render text: "What do you want me to say? #{session[:visits]}"
	end

end
