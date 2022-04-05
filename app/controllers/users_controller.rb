class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
   
    if params[:query].present?
      @search = User.users_find_name(params[:query])
      @users = @search.result(distinct: true)
    else
      @search = User.ransack("")
      @users = User.all
    end  

  end
end
