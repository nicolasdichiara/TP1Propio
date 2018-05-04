import rolando.*

object espejo{
	
	method mejorArtefactoSinEspejo() {
		return rolando.verArtefactos()
			.filter{ artefacto => artefacto != self }
			.max{ artefacto => artefacto.poder() }
	}
	
	method poder(){
		if(rolando.verArtefactos().isEmpty()){
			return 0
		} else if(rolando.verArtefactos().size()==1 and rolando.verArtefactos()==[self]){
			return 0
		} else return  self.mejorArtefactoSinEspejo().poder()
	}
	
}