class Dojo < ActiveRecord::Base
	has_many :ninjas
	validates :name, :city, :state, presence: true
	before_destroy :destroy_ninjas
	private
		def destroy_ninjas
			self.ninjas.destroy_all
		
		end
end
