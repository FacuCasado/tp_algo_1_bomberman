import wollok.game.*
import bombita.*
import config.*
import otros.*



//Se instancia al colocar una bomba, el radio va a ser el radio que tenga el usuario seteado
class Bomba {
	var property tiempoExplosion = 2
	var property position = game.at(0,0)
	const property image = "Bomba.png"
	
	method esMejora() = false
	method esPared() = false
	method esCaja() = false
	method esBomba() = true
	method esJugador() = false
	
	method Explotar(pusobomba, radioAumentado){//Funcion que hace explotar a la bomba eliminando la visual y llamando a las funciones que eliminen 
		game.removeVisual(self)
		pusobomba.cantBombas(pusobomba.cantBombas()-1)
		game.addVisual(new Fuego().poneFuego(self.position().up(1)))
		game.addVisual(new Fuego().poneFuego(self.position().down(1)))
		game.addVisual(new Fuego().poneFuego(self.position().right(1)))
		game.addVisual(new Fuego().poneFuego(self.position().left(1)))
		game.addVisual(new Fuego().poneFuego(self.position()))
		
		if (radioAumentado){
			game.addVisual(new Fuego().poneFuego(self.position().up(2)))
			game.addVisual(new Fuego().poneFuego(self.position().down(2)))
			game.addVisual(new Fuego().poneFuego(self.position().right(2)))
			game.addVisual(new Fuego().poneFuego(self.position().left(2)))
		}
	}
	
	method PoneBomba(posicion, pusobomba, radioAumentado){//funcion que pasa la posicion y 
		self.position(posicion)
		game.schedule(3000, {self.Explotar(pusobomba, radioAumentado)})
		return self
		
	}
	
	method seQuemo(){}
}

