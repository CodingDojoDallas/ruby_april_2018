class Dojo < ActiveRecord::Base
    has_many :ninjas
    validates :name, :city, :state, presence: true
    validates :state, length: { maximum: 2 }

    after_destroy :delete_ninjas

    private
        def delete_ninjas
            self.ninjas.destroy_all
        end
end
