require 'rails_helper'

RSpec.describe Post do
	describe "'s user_id has to be a number" do
		before {@u=FactoryGirl.create(:post)}
 		specify { expect(@u.user_id).to be(1) }
end

end 