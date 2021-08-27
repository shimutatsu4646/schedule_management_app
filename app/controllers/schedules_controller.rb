class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = "スケジュールを作成しました"
      redirect_to :schedules
    else 
      flash.now[:alert] = "スケジュールを作成できませんでした"
      render "new"
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end
  
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(schedule_params)
      flash[:notice] = "スケジュールを編集しました"
      redirect_to :schedules
    else
      flash.now[:alert] = "スケジュールを編集できませんでした"
      render "edit"
    end
  end
  
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "スケジュールを削除しました。"
    redirect_to :schedules
  end
  
  private
  def schedule_params
    params.require(:schedule).permit(:title, :start, :end, :all_day, :memo)
  end
end
