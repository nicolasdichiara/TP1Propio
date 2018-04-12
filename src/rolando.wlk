import fuerzaOscura.*
import hechizos.*
import artefactos.*

object rolando {
	
	var hechizoPreferido
	var valorBaseHechizo=3
	var valorBaseLucha=1
	var artefactos=[]
	
	method nivelDeHechizeria(){
		return (valorBaseHechizo * hechizoPreferido.poder()) + fuerzaOscura.poder()
	}
	
	method cambiarHechizo(unHechizo){
		hechizoPreferido=unHechizo
	}
	
	method teCreesPoderoso(){
		return hechizoPreferido.poder()>15
	}
	
	method valorBaseLucha(){
		return valorBaseLucha
	}
	
	method cambiarValorBaseLucha(valor){
		valorBaseLucha=valor
	}
	
	method agregarArtefacto(artefacto){
		artefactos.add(artefacto)
	}
	
	method sacarArtefacto(artefacto){
		artefactos.remove(artefacto)
	}
	
	method verArtefactos(){
		return artefactos
	}
	
	method habilidadDeLucha(){
		return valorBaseLucha + artefactos.sum{artefacto=>artefacto.habilidadDeLucha()}
	}
	
	method masLuchaQueHechiceria(){
		return self.habilidadDeLucha()>self.nivelDeHechizeria()
	}
}