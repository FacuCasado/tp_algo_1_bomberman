import bombas.*
import bombita.*
import mejoras.*
import otros.*
import wollok.game.*

const jugador1 = new Jugador()

object iniciarJugador1 {
	method iniciar(){
	config.configurarTeclas()
	colisionadorArribaP1.seguir()
	colisionadorDerechaP1.seguir()
	colisionadorIzquierdaP1.seguir()
	colisionadorAbajoP1.seguir()
	game.addVisual(jugador1)
	game.addVisual(caj2)
	game.addVisual(colisionadorArribaP1)
	game.addVisual(colisionadorAbajoP1)
	game.addVisual(colisionadorDerechaP1)
	game.addVisual(colisionadorIzquierdaP1)
	40.times{i => game.addVisual(new Caja())} //Probablmente se puede mejorar para que spawneen mejor distribuidas las cajas
}
}




object config {
	
	
	method configurarTeclas() {
		keyboard.left().onPressDo({ jugador1.irA(jugador1.position().left(1)) })
		keyboard.right().onPressDo({ jugador1.irA(jugador1.position().right(1))})
		keyboard.down().onPressDo({ jugador1.irA(jugador1.position().down(1)) })
		keyboard.up().onPressDo({ jugador1.irA(jugador1.position().up(1))})
		keyboard.k().onPressDo({ jugador1.soltarBomba(jugador1.position())})
		
	}
	
//	method configurarColisiones() {
//		game.onCollideDo(Jugador, { Algo => Algo.teEncontro(Jugador) })
//	}
	}

