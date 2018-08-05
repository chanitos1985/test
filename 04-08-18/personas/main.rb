require "./Lista1"

@name
@lastName
@typeDocument
@document
@documentMod

def agregarPersona
  p "Por favor ingrese el nombre"
  @name = gets.chomp
  p "Por favor ingrese el apellido"
  @lastName = gets.chomp
  p "Por favor ingrese el tipo de documento C O T"
  @typeDocument = gets.chomp
  p "Por favor ingrese el Numero del documento"
  @document = gets.chomp
end

lista = Lista.new
loop do
    p "Por favor ingrese No. de la actividad a realizar"
    p "1 agregar Persona"
    p "2 Modificar Persona"
    p "3 eliminar Persona"
    p "4 Buscar Persona "
    p "5 Imprimir Lista"
    p "6 salir"
    menu = gets.to_i
    case menu
        when 1
          agregarPersona
          lista.agregarNodo(@name,@lastname,@typeDocument,@document)
        when 2
            p "Por favor ingrese el Numero del documento a modificar"
            @documentMod = gets.chomp
            agregarPersona
            lista.modificarNodo(@documentMod,@name,@lastname,@typeDocument,@document)
        when 3
            agregarPersona
            lista.eliminarNodo(@name,@lastname,@typeDocument,@document)
        when 4
            p "Por favor ingrese el Numero del documento a buscar"
            @documentMod = gets.chomp
            lista.buscarPersona(@documentMod,"","","","")
        when 5
          if !lista
            menu = 1
            p "error por favor ingrese alguna persona"
          else
            lista.imprimirLista
          end
        when 6
          p "Ha salido del programa"
        else
        p "error al seleccionar el menu el programa terminara"
    end
    p ""
  break if menu > 5
end

'lista = Lista.new
lista.agregarNodo("adriana","barrero","C","1111")
lista.agregarNodo("omaira","barrero","C","2222")
lista.agregarNodo("alfredo","sarmiento","T","3333")
lista.agregarNodo("ivan","sarmiento","C","2227")
lista.agregarNodo("david","sarmiento","T","555")
lista.imprimirLista
lista.eliminarNodo("david","sarmiento","T","555")
p ""
lista.imprimirLista
p ""
lista.insertarLugar("444","camilo","barrero","T","544")
#lista.insertarPrimero(3)
lista.imprimirLista

p ""
lista.insertarUltimo("david","sarmiento","T","555")
lista.imprimirLista
p ""
lista.modificarNodo("3333","alfredo","sarmiento","T","3388")
lista.imprimirLista'