import fuerzaOscura.*
import refuerzos.*
import rolando.*

object espadaDelDestino {
	
	var poder=3
	
	method poder(personaje){
		return poder
	}

}

object collarDivino{
	var perlas
	
	method poder(personaje){
		return perlas
	}
	
	method cantidadDePerlas(cantidad){
		perlas=cantidad
	}
	
}

object mascaraOscura{
	var unidad = 4
	method poder(personaje){
		if (fuerzaOscura.poder()/2<=4){
			return unidad
		} else {
			return fuerzaOscura.poder()/2 
		}
	}
	
}

object armadura{
	var tipoRefuerzo=ningunoRefuerzo
	var unidad=2
	
	method elegirRefuerzo(_tipoRefuerzo){
		tipoRefuerzo=_tipoRefuerzo
	}
	method poder(personaje){
		return unidad + tipoRefuerzo.poder(personaje)
	}
	
}