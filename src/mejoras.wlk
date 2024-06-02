import wollok.game.*
import bombita.*

class Mejoras{
	const property image
	var property position
	
	method desactivar(personaje){
		return true
	}
	
	method activar(personaje){
		
	}
	
	method seQuemo(){}
	method esMejora() = true
	method esPared() = false
	method esCaja() = false
	method esBomba() = false	
}

class TomaMate inherits Mejoras{
	
	method mensajeActivacion(){
		return 'Activo Mate'
	}
	
	override method activar(personaje){
		game.schedule(5000, self.desactivar(personaje))
		personaje.escudo(true)
	}
	
	override method desactivar(personaje){
		personaje.escudo(false)
		return true
	}
}

class FumaPorro inherits Mejoras{
	var property nuevaVelocidad = 2
	var property velDefault = 1
	
	method mensajeActivacion(){
		return 'Activo Fumar'
	}
	
	override method activar(personaje){
		game.schedule(5000, self.desactivar(personaje))
		personaje.velocidad(nuevaVelocidad)
	}
	
	override method desactivar(personaje){
		personaje.velocidad(velDefault)
		return true
	}
}

class ComeAsado inherits Mejoras{
	
	method mensajeActivacion(){
		return 'Activo Asado'
	}
	
	
	override method activar(personaje){
		//game.schedule(5000, self.desactivar(personaje))
		personaje.radioAumentado(true)
	}
	
	override method desactivar(personaje){
		personaje.radioAumentado(false)
		return true
	}
}