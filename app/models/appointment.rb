class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :stylist

  validates :user_id, presence: true
  validates :date, presence: true
  validates :time, presence: true


  validate :available_times 


  def available_times
    clashing_appt = self.stylist.appointments.find { |appt| appt.date == self.date && appt.time == self.time }
    if clashing_appt
      errors.add(:"stylist #{self.stylist.name}", 'is not available at that time')
    end
  end 



end
