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

method poder(personaje){ //suma de hechizos sumatoriaPoderHechizos
	return   libroHechizo.filter({elHechizo=>elHechizo.esPoderoso(personaje)}).sum({elHechizo=>elHechizo.poder(personaje)})
	
}

}