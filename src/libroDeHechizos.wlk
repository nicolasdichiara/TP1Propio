import hechizos.*
import refuerzos.*
import rolando.*
import fuerzaOscura.*

object libroDeHechizos {
var libroHechizo = [hechizo,hechizoBasico]
method agregarHechizo(_hechizo){
	libroHechizo.add(_hechizo)
}

method removerHechizo(_hechizo){
	libroHechizo.add(_hechizo)
}

method poder(){ //suma de hechizos sumatoriaPoderHechizos
	return   libroHechizo.filter({elHechizo=>elHechizo.esPoderoso()}).sum({elHechizo=>elHechizo.poder()})
	
}

}