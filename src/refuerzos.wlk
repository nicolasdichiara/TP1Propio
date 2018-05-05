import rolando.*

object cotaDeMalla{
	method poder(personaje){
		return 1
	}
}

object bendicion{
	method poder(personaje){
		return personaje.nivelDeHechiceria()
	}
}

object ningunoRefuerzo{
	method poder(personaje){
		return 0
	}
}