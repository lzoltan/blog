require 'faker'

FactoryGirl.define do
	factory :invalid_id do |f|
		f.content { Faker::Name.first_name } 
		f.user_id { Fake::Name.first_name}
	end
end












