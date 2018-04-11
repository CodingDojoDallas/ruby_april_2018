class RpgsController < ApplicationController
	AMOUNTS = {
		farm: -> {return rand(10..20)},
		cave:  -> {return rand(5..10)},
		house:  -> {return rand(2..5)},
		casino:  -> {return rand(-50..50)}
	}
	

	def index
		session[:total] ||=0
		session[:activities] ||=[] 
		return render 'rpgs/index'
	end
	def mine
		building = params[:building]
		gold = AMOUNTS[building.to_sym].()
		activity = build(building, gold)
		session[:total] += gold
		p gold
		p activity
		session[:activities] << activity
		p session[:activities] 
		redirect_to :back
	end

	private
	def build(building, gold)
		activity = {}
		if gold >= 0
			activity[:color] = "green"
			activity[:message]="you earned #{gold} golds from the #{building}"
		else
			activity[:color] = "red"
			activity[:message] = "you lost #{gold} golds from the #{building}"
		end
		return activity

		
	end


end
