require "pry"

class Patient
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
    @appts = []
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    appt = Appointment.new(date, self, doctor)
    @appts << appt
    appt
  end
  
  def appointments
    Appointment.all.select do |appt|
    appt.patient == self
    end
  end
  
  def doctors
    appointments.collect do |appt|
    appt.doctor
    end
  end
  
end