class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	#require 'uuidtools'

	def twitter
	 redirect_to posts_path
	end

end
