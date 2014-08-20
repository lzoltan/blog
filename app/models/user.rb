class User < ActiveRecord::Base
  
  rolify :before_add => :before_add_method

  def before_add_method
  	self.add_role :basic
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :posts
	acts_as_followable
	acts_as_follower
	acts_as_voter
	  
	has_many :relation
	has_many :friends, :through => :relation
	has_many :inverse_relation, :class_name => "Relation", :foreign_key => "relation_id"
	has_many :inverse_friends, :through => :inverse_relation, :source => :user


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

end
