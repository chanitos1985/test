require 'date'
class Saludo
    attr_accessor :day, :month, :year
    def initialize
    end
    def calcular 
        today = Date.today
        return "Ya cumplio" if today.month > @month
        return "Ya cumplio" if today.day  >= @day  and today.month == @month
        return "No a cimplido"
    end
end



