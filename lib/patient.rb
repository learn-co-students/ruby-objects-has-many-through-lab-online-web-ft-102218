class Patient  
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
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    self.appointments << appointment
    appointment
  end 
  
  def doctors
    self.appointments.map { |app| app.doctor }
  end
end