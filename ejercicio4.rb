# Clase perro
class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(properties)
    @nombre = properties[:nombre]
    @raza = properties[:raza]
    @color = properties[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end
@propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }
@perrini = Dog.new(@propiedades)
@perrini.ladrar
