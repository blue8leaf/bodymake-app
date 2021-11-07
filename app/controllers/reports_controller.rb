class ReportsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @reports = Report.where(user_id: current_user.id).includes(:user)
    @report = Report.where(id:params[:id])
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to root_path
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
      redirect_to report_path
    else
      render :edit
    end
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    redirect_to root_path
  end

  private
  def report_params
    params.require(:report).permit(:image, :registration_date, :body_weight, :body_fat, :body_bust, :body_arm, :body_west, :body_belly, :body_hip, :body_thigh, :body_calf, :body_ankle).merge(user_id: current_user.id)
  end
end
