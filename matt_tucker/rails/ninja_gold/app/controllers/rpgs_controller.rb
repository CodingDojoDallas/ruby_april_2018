class RpgsController < ApplicationController
	
	def index
		set_session_defaults
	end

	def gamble
		building = params[:building]

		gold = calculate_gold building
		
		activity = build_activity building, gold

		update_session gold, activity

		redirect_to :back
	end

	private
		def calculate_gold building
			amounts = {
				farm: [10, 20],
				cave: [5, 10],
				house: [2, 5],
				casino: [-50, 50]
			}

			values = amounts[building.to_sym]
			
			rand(values[0]..values[1])
		end

		def build_activity building, gold
			activity = {}
			time = Time.now.in_time_zone('Central Time (US & Canada)').strftime('%b %d, %Y, %l:%M')

			if gold >= 0
				activity[:color] = 'green'
				activity[:message] = "Earned #{gold} golds from the #{building} #{time}"
			else
				activity[:color] = 'red'
				activity[:message] = "Entered a casino and lost #{gold} golds... Ouch... #{time}"
			end

			return activity
		end

		def set_session_defaults
			session[:gold] ||= 0
			session[:activities] ||= []
		end

		def update_session gold, activity
			session[:gold] += gold

			session[:activities].unshift activity

			return
		end

end
