class ReportsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @reports = Report.where(user_id: current_user.id).includes(:user).limit(7).order("id DESC")
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_path
    else
      render :new
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    if @report.update(report_params)
      redirect_to reports_path
    else
      render :edit
    end
  end

  private
  def report_params
    params.require(:report).permit(:image, :registration_date, :body_weight, :body_fat, :body_bust, :body_arm, :body_west, :body_belly, :body_hip, :body_thigh, :body_calf, :body_ankle).merge(user_id: current_user.id)
  end
end
