class GraphsController < ApplicationController
  def index
    @reports = Report.where(user_id: current_user.id).includes(:user)
    @objective_weight = current_user.objective_weight
  end
end
