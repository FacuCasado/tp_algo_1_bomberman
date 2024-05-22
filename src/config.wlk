import bombas.*
import bombita.*
//import mejoras.*
import otros.*
import wollok.game.*

const jugador1 = new Jugador()
const enemigo1 = new Enemigos()

object iniciarJugador1 {
	method iniciar(){
	config.configurarTeclas()
	game.addVisual(jugador1)
	game.addVisual(caj2)
	game.addVisual(enemigo1)
	game.onTick(1000,"Persigue", {enemigo1.Ir(1)})
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

