class AdminController < ApplicationController

	def users
		@users = User.where(admin: :false)
		@admin_users = User.where(admin: true)
	end

	def make_admin
		user = User.find(params[:id])
		user.admin = true
		user.save
		redirect_to '/users'
	end

	def remove_admin
		user = User.find(params[:id])
		user.admin = false
		user.save
		redirect_to '/users'
	end
end
