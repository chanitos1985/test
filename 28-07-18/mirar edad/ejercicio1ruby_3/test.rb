class Saludo
  attr_accessor :name
  attr_accessor :age

  def initialize 
  end

  def Hola
    result = "Hola mundo #{@name}"
    result += (@age>18 ? "es mayor #{@age}" : "es menor")
  end
 
end