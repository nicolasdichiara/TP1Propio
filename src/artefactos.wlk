import fuerzaOscura.*
import refuerzos.*
import rolando.*
object espadaDelDestino {
	
	var poder=3
	
	method poder(){
		return poder
	}
	method nombre(){
		return"espadaDelDestino"
	}
}

object collarDivino{
	var perlas
	
	method poder(){
		return perlas
	}
	
	method cantidadDePerlas(cantidad){
		perlas=cantidad
	}
		method nombre(){
		return"collarDivino"
	}
	
}

object mascaraOscura{
	var unidad = 4
	method poder(){
		if (fuerzaOscura.poder()/2<=4){
			return unidad
		} else {
			return fuerzaOscura.poder()/2 
		}
	}
		method nombre(){
		return"mascaraOscura"
	}
	
}

object armadura{
	var tipoRefuerzo=ningunoRefuerzo
	var unidad=2
	
	method elegirRefuerzo(_tipoRefuerzo){
		tipoRefuerzo=_tipoRefuerzo
	}
	method poder(){
		return unidad + tipoRefuerzo.poder()
	}
		method nombre(){
		return"armadura"
	}
	
}