class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def index
  	@all_user = User.all
  end

  def create
  	puts "yoyoyoy"
  	puts params["user"]
  	puts params["user"][:username]
  	puts "uououou"
  	user = User.new
    user.username = params["user"][:username]
    user.email = params["user"][:email]
    user.bio = params["user"][:bio]
	user.save
	redirect_to "/"
  end
end
 