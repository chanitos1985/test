require './clase'
result = Saludo.new
p "ingrese dia"
day = gets.to_i
result.day=day
p "Ingrese Mes"
month = gets.to_i
result.month=month
p "Ingrese año"
year=gets.to_i
result.year=year
p result.calcular





 