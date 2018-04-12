object espectroMalefico {
	
	var nombre= 'Espectro Malefico'
	
	method poder(){
		return nombre.size()
	}
	
	method cambiarNombre(nuevoNombre){
		nombre= nuevoNombre
	}
	
}

object hechizoBasico{
	
	var poder=10
	
	method poder(){
		return poder
	}
}