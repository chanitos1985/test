require "./Nodo"

class Lista
  
  def initialize
    @cabeza = nil
  end

  def agregarNodo(nombres,apellidos,tipo_doc,num_doc)
    return if validarDatos(nombres,apellidos,tipo_doc,num_doc)
    if @cabeza
      encuentraUltimo.siguiente = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
    else
      @cabeza = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
    end
  end

  def encuentraUltimo
    nodo = @cabeza
    return nodo if !nodo.siguiente
    return nodo if !nodo.siguiente while (nodo = nodo.siguiente)
  end

  def imprimirLista
    nodo = @cabeza
    while (nodo)
      puts "persona id #{nodo.id} nombre #{nodo.nombres} tipo de cedula #{nodo.tipo_doc} cedula #{nodo.num_doc}"
      #p nodo.nombres
      nodo = nodo.siguiente
    end
  end

  def eliminarNodo(nombres,apellidos,tipo_doc,num_doc)
    if @cabeza.num_doc == num_doc
      @cabeza = cabeza.siguiente
      return
    end
    nodo = encuentraAnterior(nombres,apellidos,tipo_doc,num_doc)
    nodo.siguiente = nodo.siguiente.siguiente
  end

  def encuentraAnterior(nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    return false if !nodo.siguiente
    while nodo
      return nodo if nodo.siguiente and nodo.siguiente.num_doc == num_doc 
      nodo = nodo.siguiente
    end
  end

  def encontrarNode(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    return false if !nodo.siguiente
    while nodo
      return nodo if nodo.num_doc == num_docFirst
      nodo = nodo.siguiente
    end
  end

  def insertarLugar(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    if !nodo
      @cabeza = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
      return
    end
    busqueda = encontrarNode(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    if busqueda
      siguiente_busq = busqueda.siguiente
      busqueda.siguiente = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
      busqueda.siguiente.siguiente = siguiente_busq
    end
  end

  def insertarPrimero(nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    @cabeza = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
    if nodo
      @cabeza.siguiente = nodo
    end
  end

  def insertarUltimo(nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    if !nodo
      @cabeza = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
      return
    end
    busqueda = encontrarUltimo(nombres,apellidos,tipo_doc,num_doc)
    if busqueda
      siguiente_busq = busqueda.siguiente
      busqueda.siguiente = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
      busqueda.siguiente.siguiente = siguiente_busq
    end
  end

  def encontrarUltimo(nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    return false if !nodo.siguiente
    loop do
          nodo = nodo.siguiente
          return nodo if !nodo.siguiente
        break if !nodo.siguiente
    end
  end

  def validarDatos(nombres,apellidos,tipo_doc,num_doc)
    if (tipo_doc != "C") & (tipo_doc != "T")
      puts "el tipo de documento para #{nombres} #{apellidos} no es valido por favor corrijalo "
      return true
    else
        if buscarNum(num_doc,nombres,apellidos,tipo_doc,num_doc)
          puts "el numero de documento #{num_doc} ya existe por favor corrijalo para la persona #{nombres} #{apellidos} "
          return true
        else
          return false
        end
    end
  end

  def modificarNodo(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    return if validarDatos(nombres,apellidos,tipo_doc,num_doc)
    if !nodo
      @cabeza = Nodo.new(nombres,apellidos,tipo_doc,num_doc)
      return
    end
    busqueda = encontrarNode(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    if busqueda
      busqueda.nombres = nombres
      busqueda.apellidos = apellidos
      busqueda.tipo_doc = tipo_doc
      busqueda.num_doc = num_doc
    end
  end

  def buscarNum(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    if !nodo
      return
    end
    busqueda = encontrarNode(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    if busqueda
      return true
    else
      return false
    end
  end

  def BuscarPersona(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    nodo = @cabeza
    busqueda = encontrarNode(num_docFirst,nombres,apellidos,tipo_doc,num_doc)
    if busqueda
      puts "persona id #{busqueda.id} nombre #{busqueda.nombres} tipo de cedula #{busqueda.tipo_doc} cedula #{busqueda.num_doc}"
    end
  end
end