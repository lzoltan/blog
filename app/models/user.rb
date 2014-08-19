class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :posts
	acts_as_followable
	acts_as_follower
	acts_as_voter
	  
	has_many :friendships
	has_many :friends, :through => :friendships
	has_many :inverse_friendships, :class_name => "FriendShip", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

end
