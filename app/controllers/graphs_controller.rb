class GraphsController < ApplicationController
  def index
    @reports = Report.where(user_id: current_user.id).includes(:user)
  end
end
