class Owner < ActiveRecord::Base
  belongs_to :user, required: true
  belongs_to :blog, required: true
end
