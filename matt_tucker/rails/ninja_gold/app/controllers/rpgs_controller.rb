class RpgsController < ApplicationController
	AMOUNTS = {
		farm: rand(10..20),
		cave: rand(5..10),
		house: rand(2..5),
		casino: rand(-50..50)
	}

	def index
		session[:gold] ||= 0
		session[:activities] ||= []
	end

	def gamble
		building = params[:building]

		gold = AMOUNTS[building.to_sym]
		
		activity = build_activity building, gold
		
		session[:gold] += gold

		session[:activities].unshift activity

		redirect_to :back
	end

	private 
		def build_activity building, gold
			activity = {}

			if gold >= 0
				activity[:color] = 'green'
				activity[:message] = "Earned #{gold} golds from the #{building} #{Time.now}"
			else
				activity[:color] = 'red'
				activity[:message] = "Entered a casino and lost #{gold} golds... Ouch... #{Time.now}"
			end

			return activity
		end

end
