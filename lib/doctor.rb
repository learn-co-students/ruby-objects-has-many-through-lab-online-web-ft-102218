class Doctor
  attr_accessor :name, :appointments 
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self).tap {|appointment| @appointments << appointment }
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end  
  end
end