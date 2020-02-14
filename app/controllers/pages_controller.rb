class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    # USER #
    @appointments = current_user.appointments

    # ADVISOR #
    @services = current_user.services
    @advisor_appointments = current_user.advisor_appointments
  end
end
