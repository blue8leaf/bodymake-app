class ReportsController < ApplicationController
  def index
    @reports = Report.limit(2).order("id DESC")
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path
    else
      render root_path
    end
  end

  private
  def report_params
    params.require(:report).permit(:image, :registration_date, :body_weight, :body_fat, :body_bust, :body_arm, :body_west, :body_belly, :body_hip, :body_thigh, :body_calf, :body_ankle).merge(user_id: current_user.id)
  end
end
