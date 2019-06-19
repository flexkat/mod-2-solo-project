class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    appointment = Appointment.create appointment_params
    redirect_to user_path(@user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :stylist_id)
  end

end
