class Doctor

@@all = []
attr_accessor :name, :appts, :appt

  def initialize(name)
    @name = name
    @appts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
    appts << appt
    appt
  end

  def appointments
    @appts.select do |appt|
    appt.doctor == self
    end
  end

  def patients
      appointments.collect do |appt|
      appt.patient
      end
  end
end
