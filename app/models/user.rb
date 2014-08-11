class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :post
  
has_many :friend_ships
has_many :friends, :through => :friend_ships
has_many :inverse_friend_ships, :class_name => "FriendShip", :foreign_key => "friend_id"
has_many :inverse_friends, :through => :inverse_friend_ships, :source => :user


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

end
