class Saludo
  attr_accessor :numero
  attr_accessor :limite


  def Suma 
    #result = "Hola mundo #{@name}"
    #result += (@age>18 ? "es mayor #{@age}" : "es menor")
    i = 1
    sum = 0
    begin
      puts "ingrese el número a sumar"
      @numero = gets.to_i
      sum += @numero
      i += 1
    end while ((i <= @limite) or (@numero == 0))
    puts "esta es la suma #{sum}"

    @numero = sum
    #Promedio 
  end
 
  def Promedio
    p1 = @numero
    p1 = p1.to_f
    p2 = @limite
    p2 = p2.to_f
    num = (p1/p2).to_f
    result = "promedio:  #{num}"
  end
end