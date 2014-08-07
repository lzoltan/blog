class Post < ActiveRecord::Base
   validates :content, :presence => true

   has_one :user

   def self.from_user(name)
   		where{user_id.in(User.where{username.matches "#{name}" })}
   end

   def self.search(text)
   		where{content.matches "#{text}"}
   end

   def self.from_time(ago) 
   		where{created_at.gt "#{ago}"}
   	end



end
