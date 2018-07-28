class Saludo
  def initialize name,edad
    @name = name
    @age = edad
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