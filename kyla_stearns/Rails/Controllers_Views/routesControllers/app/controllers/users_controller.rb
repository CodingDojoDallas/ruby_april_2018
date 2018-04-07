class UsersController < ApplicationController

	def hello
		render text: "Hello CodingDojo!"
	end

	def say_hello
		render text: "Saying Hello!"
	end

	def joe
		render text: "Saying Hello Joe!"
	end

	def michael
		redirect_to "/say/hello/joe"
	end

	def times_visited
		puts session[:visits]
		session[:visits] += 1
		render text: "You have visited this URL #{session[:visits]} time(s)."
	end

	def restart
		session[:visits] = 0
		# session.clear
		# or can use 
		# reset_session
		# or
		# session.delete(key_name)
		render text: "Destroyed the session! #{session[:visits]}"
	end

end
