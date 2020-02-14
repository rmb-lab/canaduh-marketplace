class AppointmentsController < ApplicationController
  before_action :set_service, only: %i(create)
  # NEW: In the service controller? #
  # GET #
  def new
    @service = Service.find(params[:service_id])
    @appointment = Appointment.new
  end

  # POST #
  def create
    @appointment = Appointment.new(appointment_params)
    @service = Service.find(params[:service_id])
    @appointment.service = @service
    @appointment.user = current_user
    @appointment.status = 'pending confirmation'
    if @appointment.save
      redirect_to dashboard_path
    else
      redirect_to service_path(@service)
    end
  end

  # DELETE #
  # def destroy
  #   @appointment = Appointment.find(params[:id])
  #   @appointment.destroy
  #   redirect_to dashboard_path
  # end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :status, :service_id, :user_id, :rating)
  end
end
