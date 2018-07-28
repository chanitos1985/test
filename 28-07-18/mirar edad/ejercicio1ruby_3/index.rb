require './test'
a = Saludo.new
name = gets.chomp
a.name=name
age=gets.to_i
a.age=age
p a.Hola
