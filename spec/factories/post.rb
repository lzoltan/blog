require 'faker'

FactoryGirl.define do
	factory :post do |f|
		f.content { Faker::Name.first_name } 
		f.user_id { 1 }
	end
end












