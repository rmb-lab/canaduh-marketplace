class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params.require(:service).permit(:title, :details, :completed))
    @service.save
    redirect_to(services_path)
  end

  def show
    set_service
    @appointment = Appointment.new
  end

  def edit
    set_service
  end

  def update
    set_service
    @service.update(params.require(:service).permit(:title, :details, :completed))
    redirect_to(service_path)
  end

  def destroy
    set_service
    @service.destroy
    redirect_to(services_path)
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end
end
