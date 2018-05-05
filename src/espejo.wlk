import rolando.*

object espejo{
	
	method mejorArtefactoSinEspejo(personaje) {
		return personaje.verArtefactos()
			.filter{ artefacto => artefacto != self }
			.max{ artefacto => artefacto.poder(personaje) }
	}
	
	method poder(personaje){
		if(personaje.verArtefactos().isEmpty()){
			return 0
		} else if(personaje.verArtefactos().size()==1 and personaje.verArtefactos()==[self]){
			return 0
		} else return  self.mejorArtefactoSinEspejo(personaje).poder(personaje)
	}
	
}