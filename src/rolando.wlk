import hechizos.*
import fuerzaOscura.*
import artefactos.*

object rolando {
	var valorBase = 3
	var hechizoPreferido
	var valorBaseLucha = 1
	var artefactos = []

	//getter
	method getHechizoPreferido() {
		return hechizoPreferido
	}

	method valorBaseLucha() {
		return valorBaseLucha
	}

	method verArtefactos() {
		return artefactos
	}

	//setter
	method cambiarValorBaseLucha(_valor) {
		valorBaseLucha = _valor
	}

	method elegirHechizoPreferido(_hechizo) {
		hechizoPreferido = _hechizo //le paso el hechizo que toma el valor la variable
	}

	//metodo
	method nivelDeHechiceria() {
		return ( valorBase * hechizoPreferido.poder() ) + fuerzaOscura.poder()
	}

	method teSentisPoderoso() { //a la variable que tomo el nombre del hechizo saco su valor con .poder()
		return hechizoPreferido.esPoderoso()
	}

	method agregarArtefacto(_artefacto) {
		artefactos.add(_artefacto)
	}

	method removerArtefacto(_artefacto) {
		artefactos.remove(_artefacto)
	}
	
	method agregarPertenencias(_pertenencia){
		artefactos.add(_pertenencia)
	}
	
	method removerPertenencias(_pertenencia){
		artefactos.remove(_pertenencia)
	}

	method habilidadDeLucha() {
		return valorBaseLucha+ (artefactos).sum{ artefacto => artefacto.poder() }
	}

	method laLuchaEsMayorQueHechiceria() {
		return self.habilidadDeLucha() > self.nivelDeHechiceria()
	}

	method estasCargado() {
		return (artefactos).size() > 5
	}
}
