class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end  

  def doctors
    self.appointments.map do |visit|
      visit.doctor
    end
  end
end
