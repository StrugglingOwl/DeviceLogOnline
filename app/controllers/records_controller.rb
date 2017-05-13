class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.save

      redirect_to records_path
  end

  def update
    @record = Record.find(params[:id])

    @record.update(record_params)

    redirect_to records_path, notice: "更新成功！"

  end

  private

  def record_params
    params.require(:record).permit(:date, :room_id, :device_name, :device_model, :serial_number, :summary, :resolution, :result, :remarks)

  end
end
