class HomeController < ApplicationController
	before_filter :authenticate_user!
  def index
  	# if current_user
   #      respond_to do |format|
   #        format.html { redirect_to new_user_session_path }
   #      end
   #  end
  end
end
