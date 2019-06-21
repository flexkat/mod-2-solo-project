class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
    @stylist = Stylist.find_by(id: params[:stylist_id])
    @treatments = @stylist.treatments
    @user = params[:user_id]
  end

  def create
    appointment = Appointment.create appointment_params
    if appointment.valid? == true
      redirect_to user_path(@user)
    else   
      flash[:errors] = appointment.errors.full_messages
      redirect_to new_appointment_path
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :stylist_id, :treatment_id, :date, :time)
  end

end
