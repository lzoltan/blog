class FriendShip < ActiveRecord::Base

	belongs_to :user
	belongs_to :friend , class_name: 'User'

	def self.denied
		where{status.matches "denied"}  
	end

	def self.request
		where{status.matches "request"}  
	end

	def self.accept
		where{status.matches "accept"}  
	end


end
