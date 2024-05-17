import wollok.game.*
import config.*
import otros.*
import bombas.*



class Jugador {
	
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
	const property image = "BOMBITARODRIGUEZ.png"
	
	method soltarBomba(posicion){
		bomba1.position(posicion)
		game.addVisual(bomba1)
	}
	
	method irA(nuevaPosicion) {
//		if (game.colliders(jugador1)==)
		position = nuevaPosicion
	}

}

const bomba1 = new Bomba()