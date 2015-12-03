class AvatarController < ApplicationController

	def update
		user = current_user
        if user.update(image_params)
          flash[:notice] = "Profile Picture updated !!"
        else
          user.errors.each do |f,x|
            puts f,x
          end
          flash[:notice] = "Profile Picture could not be updated !!"
        end
        redirect_to :back
	end

	private

	def image_params
		params.require(:user).permit(:avatar)
	end
end
