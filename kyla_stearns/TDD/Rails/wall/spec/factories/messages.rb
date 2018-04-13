FactoryBot.define do
  factory :message do
    content "It's almost Friday!"
    association :user, factory: :user 
  end
end