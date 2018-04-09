class TimesController < ApplicationController
	def main
		# Time.now will return the date and the time... then to format it, use the strftime
		@currentDate = Time.now.strftime("%B %e, %Y")
		@currentTime = Time.now.strftime("%I:%M %p")
	end
end
