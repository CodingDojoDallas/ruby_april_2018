class RpgController < ApplicationController

	def index
		session[:money] ||= 0
		session[:content] ||= []
	end

	def farm
		# Time.now will return the date and the time... then to format it, use the strftime
		@current = Time.now.strftime("%B %e, %Y %I:%M %p")
		# session[:msg] = ""
		# p session[:msg]
		gain = rand(10..21)
		# p gain
		session[:money] += gain
		# p session[:money]
		session[:content] << {
			msg: "You earned #{gain.to_s} gold from the farm! -- #{@current}",
			color: "green"
		}
		p session[:content]
		# session[:color] = "green"
		# session[:msg] << "You earned #{gain.to_s} gold from the farm! #{@current}"
		redirect_to '/'
	end

	def cave
		@current = Time.now.strftime("%B %e, %Y %I:%M %p") 
		gain = rand(5..11)
		# p gain
		session[:money] += gain
		session[:content] << {
			msg: "You earned #{gain.to_s} gold from the cave! -- #{@current}",
			color: "green"
		}
		redirect_to '/'
	end

	def house
		@current = Time.now.strftime("%B %e, %Y %I:%M %p")
		gain = rand(2..6)
		# p gain
		session[:money] += gain
		session[:content] << {
			msg: "You earned #{gain.to_s} gold from the house! -- #{@current}",
			color: "green"
		}
		redirect_to '/'
	end

	def casino
		@current = Time.now.strftime("%B %e, %Y %I:%M %p")
		gainLoss = rand(-50..51)
		# p gainLoss
		session[:money] += gainLoss
		if gainLoss == 0
			session[:content] << {
				msg: "You got nothin' from the casino, man! -- #{@current}",
				color: "bold"
			}
		elsif gainLoss > 0
			session[:content] << {
				msg: "You won #{gainLoss.to_s} gold at the casino! -- #{@current}",
				color: "green"
			}
		else
			session[:content] << {
				msg: "The casino took #{gainLoss.abs.to_s} gold from you, dude! -- #{@current}",
				color: "red"
			}
		end
		redirect_to '/'
	end


	def reset
		session[:money] = 0
		session[:content] = []
		redirect_to '/'
	end
	

end
