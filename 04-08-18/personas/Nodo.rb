class Nodo
  attr_accessor :siguiente
  attr_accessor :valor
  attr_reader :id
  attr_accessor :nombres
  attr_accessor :apellidos
  attr_accessor :tipo_doc
  attr_accessor :num_doc
  @@count = 0

  def initialize(nombres,apellidos,tipo_doc,num_doc)
    #@valor = valor
    @nombres = nombres
    @apellidos = apellidos
    @tipo_doc = tipo_doc
    @num_doc = num_doc
    @siguiente = nil
    @@count += 1
    @id = @@count
  end

  def to_s
    "Valor de nodo:  #{@valor}"
  end
end