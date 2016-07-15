class HomeController < ApplicationController
  def index
  	@user = current_user
    @formlist = ["verdana", "helvetica", "sans-serif"]
  end

  def update
  	
  	@user = User.find(current_user.id)
  	@user.update_attributes(user_params)
  	#@user.save
  	redirect_to root_path
  end
  private
   
    def user_params
      params.require(:user).permit(:color, :title, :font, :bgcolor, :fsize)
    end
end
