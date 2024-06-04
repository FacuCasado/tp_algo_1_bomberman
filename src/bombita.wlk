import wollok.game.*
import config.*
import otros.*
import bombas.*
import mejoras.*

class Jugador {
	
	var property radioAumentado = false
	var property position
	var property posicionPrevia = position
	var property cantBombas = 0
 	var property velocidad = 1
  	var property escudo = false
  	var property mejoras = []
  	var property estaVivo = true
	var property image
	var property loco = false
  
	method mejoras(){return mejoras}

	
	method seQuemo(){
		if(!escudo){
			estaVivo = false
			config.gameOver(self)
		}
	}
	
	method soltarBomba(posicion){
	if(self.cantBombas()<3){ 
		self.cantBombas(self.cantBombas()+1)
		game.addVisual(new Bomba().PoneBomba(posicion, self, radioAumentado))
	}else{}
	}
	
	method irA(nuevaPosicion) {
		if(self.estaVivo()){
			posicionPrevia = position
			position = nuevaPosicion	
		}

	}
	
	method volver() {
		position = posicionPrevia
	}
	
	method comparaString(s1,s2){
		return s1 == s2
	}
	
	method agarrarMejora(mejora){
		if(self.validarMejora(mejora)){
			mejoras.add(mejora)
			game.removeVisual(mejora)	
		} else{
			game.say(self,'Ya tengo la mejora')
		}
	}
	
	method validarMejora(mejora){
		if(mejoras.size() != 0 ){
			const boolArray = mejoras.map({
				m => self.comparaString(m.contiene(),mejora.contiene())
			})
			return !boolArray.contains(true)
		} else {
			return true
		}
	}
		
	method activarMejora(){
		if (mejoras.size() != 0){
			const mejoraParaActivar = mejoras.first()
			mejoras.remove(mejoraParaActivar)
			mejoraParaActivar.activar(self)
			game.say(self, mejoraParaActivar.mensajeActivacion())
		} else {
			game.say(self, 'No Tengo Mejoras :(')
		}
	}

	method esPared() = false
	method esCaja() = false
	method esBomba() = false
	method esMejora() = false
	method esJugador() = true

}

