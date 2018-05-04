
object hechizo{
	var nombre = "espectro malefico"

	
	method nombrePoder(_nombre){
		nombre=_nombre
	}
	
	method poder(){
		return nombre.length()
		}

	method esPoderoso(){
		return self.poder()>15
	}
}


object hechizoBasico{
	method poder(){
		return 10
	}
	
	method esPoderoso(){
		return false
	}
}