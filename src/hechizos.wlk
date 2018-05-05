
object hechizo{
	var nombre = "espectro malefico"

	
	method nombrePoder(_nombre){
		nombre=_nombre
	}
	
	method poder(personaje){
		return nombre.length()
		}

	method esPoderoso(personaje){
		return self.poder(personaje)>15
	}
}


object hechizoBasico{
	method poder(personaje){
		return 10
	}
	
	method esPoderoso(personaje){
		return false
	}
}

class HechizoDeLogo{
	
	var nombre
	var multiplo
	
	constructor(_nombre,_multiplo){
		nombre=_nombre
		multiplo=_multiplo
	}
	
	method poder(personaje){
		return nombre.length() * multiplo
		}

	method esPoderoso(personaje){
		return self.poder(personaje)>15
	}
}