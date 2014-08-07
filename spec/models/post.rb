require 'rails_helper'

describe Post do
it "'s user_id has to be a number" do
 FactoryGirl.create(:post).should be_valid
end

end 