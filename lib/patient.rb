require 'pry'

class Patient
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    appointment
  end

  def doctors
    #Appointment.all.select { |appointment| appointment.patient == self }
    self.appointments.map { |appointment| appointment.doctor }
  end

  def self.all
    @@all
  end
end
