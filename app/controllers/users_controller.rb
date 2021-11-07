class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reports = Report.where(user_id: current_user.id).includes(:user)
    @report = Report.where(id:params[:id])
  end
end
