import wollok.game.*
import bombita.*
import config.*
import otros.*



//Se instancia al colocar una bomba, el radio va a ser el radio que tenga el usuario seteado
class Bomba {
	var property radio = 1
	var property tiempoExplosion = 2
	var property position = game.at(0,0)
	const property image = "Bomba.png"
	
	method Explotar(){//Funcion que hace explotar a la bomba eliminando la visual y llamando a las funciones que eliminen 
		game.removeVisual(self)
		jugador1.cantBombas(jugador1.cantBombas()-1)
		game.addVisual(new Fuego().poneFuego(self.position().up(1)))
		game.addVisual(new Fuego().poneFuego(self.position().down(1)))
		game.addVisual(new Fuego().poneFuego(self.position().right(1)))
		game.addVisual(new Fuego().poneFuego(self.position().left(1)))
	}
	
	method PoneBomba(posicion){//funcion que pasa la posicion y 
		self.position(posicion)
		game.schedule(3000, {self.Explotar()})
		return self
		
	}
	
	method seQuemo(){}
	method esMejora(){return false}
}


