require './clase'

result = Saludo.new

#********************************************************
#name=gets.chomp 
#result.name=name
#edad=gets.to_i # para parsear
#result.edad=40
#p result.Hola
#********************************************************

#*********************************************************
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

#********************************************************







 