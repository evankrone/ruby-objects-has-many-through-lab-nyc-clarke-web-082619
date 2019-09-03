class Doctor
    @@all = []
    attr_accessor :name, :patient

    def initialize (name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    
    def new_appointment(date,patient)
        Appointment.new(date,self,patient)
    end

    def patients
        Patient.all
    end

    def self.all
        @@all
    end
end