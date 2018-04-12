import fuerzaOscura.*

object espadaDelDestino {
	
	var habilidadDeLucha=3
	
	method habilidadDeLucha(){
		return habilidadDeLucha
	}
	
}

object collarDivino{
	var perlas=0
	
	method habilidadDeLucha(){
		return perlas
	}
	
	method cantidadDePerlas(cantidad){
		perlas=cantidad
	}
}

object mascaraOscura{
	
	method habilidadDeLucha(){
		if (fuerzaOscura.poder()/2<4){
			return 4
		} else {
			return fuerzaOscura.poder()/2 
		}
	}
}