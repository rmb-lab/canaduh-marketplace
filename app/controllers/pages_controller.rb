class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @appointments = current_user.appointments
    @services = current_user.services
    @advisor_appointments = current_user.advisor_appointments
  end
end
