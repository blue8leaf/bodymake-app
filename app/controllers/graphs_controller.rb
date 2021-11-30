class GraphsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reports = Report.where(user_id: current_user.id).includes(:user)
  end
end
