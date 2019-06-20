class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :stylist
  belongs_to :treatment

  validates :user_id, presence: true
  validates :date, presence: true
  validates :time, presence: true


  validate :available_times 
  validate :stylist_treatment


  def available_times
    clashing_appt = self.stylist.appointments.find { |appt| appt.date == self.date && appt.time == self.time }
    if clashing_appt
      errors.add(:"stylist #{self.stylist.name}", 'is not available at that time')
    end
  end 

  def stylist_treatment
    if self.stylist.treatments.include?(self.treatment) == false
      errors.add(:"#{self.stylist.name}", "can\'t do #{self.treatment.name}")
    end
  end 




end
