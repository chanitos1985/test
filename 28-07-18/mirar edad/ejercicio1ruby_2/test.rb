class Saludo
  attr_accessor :name
  attr_accessor :age

  def initialize 
  end

  def Hola
    result = "Hola mundo #{@name}"
    if @age > 18
      result +="esta es la edad: #{@age}"
     else
      result +="es menor de edad"
     end
  end
 
end