import wollok.game.*
import config.*
import otros.*
import bombas.*



class Jugador {
	
	
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
	const property image = "BOMBITARODRIGUEZ.png"
	var property cantBombas = 0
	
	method soltarBomba(posicion){
	if(self.cantBombas()<3){ 
		self.cantBombas(self.cantBombas()+1)
		game.addVisual(new Bomba().PoneBomba(posicion))
	}else{}
	}
	
	method irA(nuevaPosicion) {
	//	if (game.colliders(jugador1)==)
		position = nuevaPosicion
	}

}

