class Vehicle
    def initialize(model, year)
      @model = model
      @year = year
      @start = false
    end
    def engine_start
      @start = true
    end
end
class Car < Vehicle
    @@contador = 0
    def initialize(model,year)
      super
      @@contador+=1
    end
  
    def self.contador
        @@contador
    end
  
  
      def engine_start
        super
        puts 'motor encendido'
      end
  
end 
10.times do
    auto = Car.new('toyota',2016)
end
instancias  = Car.contador
puts instancias