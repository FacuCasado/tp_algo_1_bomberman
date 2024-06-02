import bombas.*
import bombita.*
//import mejoras.*
import otros.*
import wollok.game.*
import Colisionadores.*

const jugador1 = new Jugador(position = game.at(1,1))
const enemigo1 = new Enemigos(position = game.at(23,9))
const enemigo2 = new Enemigos(position = game.at(1,9))
const enemigo3 = new Enemigos(position = game.at(23,1))
object iniciarJugador1 {
	method iniciar(){
	game.addVisual(jugador1)
	game.addVisual(enemigo1)
	game.addVisual(enemigo3)
	game.addVisual(enemigo2)
	config.configurarTeclas()
	config.configurarSeguimiento(enemigo1)
	config.configurarSeguimiento(enemigo2)
	config.configurarSeguimiento(enemigo3)
	config.configurarColisiones(jugador1)
	config.configurarColisiones(enemigo1)
	config.configurarColisiones(enemigo2)
	config.configurarColisiones(enemigo3)
	config.tomarMejora(jugador1)
	enemigo1.creacolisionadores()
	enemigo3.creacolisionadores()
	enemigo2.creacolisionadores()

}
}


object iniciarParedes {

	method iniciar(){

		game.addVisual(new Pared(position = game.at(0, 0)))
		game.addVisual(new Pared(position = game.at(0, 1)))
		game.addVisual(new Pared(position = game.at(0, 2)))
		game.addVisual(new Pared(position = game.at(0, 3)))
		game.addVisual(new Pared(position = game.at(0, 4)))
		game.addVisual(new Pared(position = game.at(0, 5)))
		game.addVisual(new Pared(position = game.at(0, 6)))
		game.addVisual(new Pared(position = game.at(0, 7)))
		game.addVisual(new Pared(position = game.at(0, 8)))
		game.addVisual(new Pared(position = game.at(0, 9)))
		game.addVisual(new Pared(position = game.at(0, 10)))
		game.addVisual(new Pared(position = game.at(1, 10)))
		game.addVisual(new Pared(position = game.at(2, 10)))
		game.addVisual(new Pared(position = game.at(3, 10)))
		game.addVisual(new Pared(position = game.at(4, 10)))
		game.addVisual(new Pared(position = game.at(5, 10)))
		game.addVisual(new Pared(position = game.at(6, 10)))
		game.addVisual(new Pared(position = game.at(7, 10)))
		game.addVisual(new Pared(position = game.at(8, 10)))
		game.addVisual(new Pared(position = game.at(9, 10)))
		game.addVisual(new Pared(position = game.at(10, 10)))
		game.addVisual(new Pared(position = game.at(11, 10)))
		game.addVisual(new Pared(position = game.at(12, 10)))
		game.addVisual(new Pared(position = game.at(13, 10)))
		game.addVisual(new Pared(position = game.at(14, 10)))
		game.addVisual(new Pared(position = game.at(15, 10)))
		game.addVisual(new Pared(position = game.at(16, 10)))
		game.addVisual(new Pared(position = game.at(17, 10)))
		game.addVisual(new Pared(position = game.at(18, 10)))
		game.addVisual(new Pared(position = game.at(19, 10)))
		game.addVisual(new Pared(position = game.at(20, 10)))
		game.addVisual(new Pared(position = game.at(21, 10)))
		game.addVisual(new Pared(position = game.at(22, 10)))
		game.addVisual(new Pared(position = game.at(23, 10)))
		game.addVisual(new Pared(position = game.at(24, 10)))
		game.addVisual(new Pared(position = game.at(24, 9)))
		game.addVisual(new Pared(position = game.at(24, 8)))
		game.addVisual(new Pared(position = game.at(24, 7)))
		game.addVisual(new Pared(position = game.at(24, 6)))
		game.addVisual(new Pared(position = game.at(24, 5)))
		game.addVisual(new Pared(position = game.at(24, 4)))
		game.addVisual(new Pared(position = game.at(24, 3)))
		game.addVisual(new Pared(position = game.at(24, 2)))
		game.addVisual(new Pared(position = game.at(24, 1)))
		game.addVisual(new Pared(position = game.at(24, 0)))
		game.addVisual(new Pared(position = game.at(23, 0)))
		game.addVisual(new Pared(position = game.at(22, 0)))
		game.addVisual(new Pared(position = game.at(21, 0)))
		game.addVisual(new Pared(position = game.at(20, 0)))
		game.addVisual(new Pared(position = game.at(19, 0)))
		game.addVisual(new Pared(position = game.at(18, 0)))
		game.addVisual(new Pared(position = game.at(17, 0)))
		game.addVisual(new Pared(position = game.at(16, 0)))
		game.addVisual(new Pared(position = game.at(15, 0)))
		game.addVisual(new Pared(position = game.at(14, 0)))
		game.addVisual(new Pared(position = game.at(13, 0)))
		game.addVisual(new Pared(position = game.at(12, 0)))
		game.addVisual(new Pared(position = game.at(11, 0)))
		game.addVisual(new Pared(position = game.at(10, 0)))
		game.addVisual(new Pared(position = game.at(9, 0)))
		game.addVisual(new Pared(position = game.at(8, 0)))
		game.addVisual(new Pared(position = game.at(7, 0)))
		game.addVisual(new Pared(position = game.at(6, 0)))
		game.addVisual(new Pared(position = game.at(5, 0)))
		game.addVisual(new Pared(position = game.at(4, 0)))
		game.addVisual(new Pared(position = game.at(3, 0)))
		game.addVisual(new Pared(position = game.at(2, 0)))
		game.addVisual(new Pared(position = game.at(1, 0)))
		game.addVisual(new Pared(position = game.at(2, 2)))
		game.addVisual(new Pared(position = game.at(4, 2)))
		game.addVisual(new Pared(position = game.at(6, 2)))
		game.addVisual(new Pared(position = game.at(8, 2)))
		game.addVisual(new Pared(position = game.at(10, 2)))
		game.addVisual(new Pared(position = game.at(12, 2)))
		game.addVisual(new Pared(position = game.at(14, 2)))
		game.addVisual(new Pared(position = game.at(16, 2)))
		game.addVisual(new Pared(position = game.at(18, 2)))
		game.addVisual(new Pared(position = game.at(20, 2)))
		game.addVisual(new Pared(position = game.at(22, 2)))
		game.addVisual(new Pared(position = game.at(22, 4)))
		game.addVisual(new Pared(position = game.at(20, 4)))
		game.addVisual(new Pared(position = game.at(18, 4)))
		game.addVisual(new Pared(position = game.at(16, 4)))
		game.addVisual(new Pared(position = game.at(14, 4)))
		game.addVisual(new Pared(position = game.at(12, 4)))
		game.addVisual(new Pared(position = game.at(10, 4)))
		game.addVisual(new Pared(position = game.at(8, 4)))
		game.addVisual(new Pared(position = game.at(6, 4)))
		game.addVisual(new Pared(position = game.at(4, 4)))
		game.addVisual(new Pared(position = game.at(2, 4)))
		game.addVisual(new Pared(position = game.at(2, 6)))
		game.addVisual(new Pared(position = game.at(4, 6)))
		game.addVisual(new Pared(position = game.at(6, 6)))
		game.addVisual(new Pared(position = game.at(8, 6)))
		game.addVisual(new Pared(position = game.at(10, 6)))
		game.addVisual(new Pared(position = game.at(12, 6)))
		game.addVisual(new Pared(position = game.at(14, 6)))
		game.addVisual(new Pared(position = game.at(16, 6)))
		game.addVisual(new Pared(position = game.at(18, 6)))
		game.addVisual(new Pared(position = game.at(20, 6)))
		game.addVisual(new Pared(position = game.at(22, 6)))
		game.addVisual(new Pared(position = game.at(22, 8)))
		game.addVisual(new Pared(position = game.at(20, 8)))
		game.addVisual(new Pared(position = game.at(18, 8)))
		game.addVisual(new Pared(position = game.at(16, 8)))
		game.addVisual(new Pared(position = game.at(14, 8)))
		game.addVisual(new Pared(position = game.at(12, 8)))
		game.addVisual(new Pared(position = game.at(10, 8)))
		game.addVisual(new Pared(position = game.at(8, 8)))
		game.addVisual(new Pared(position = game.at(6, 8)))
		game.addVisual(new Pared(position = game.at(4, 8)))
		game.addVisual(new Pared(position = game.at(2, 8)))
				
	} //LAS PUSE A PICO Y PALA VIEJO NO SE COMO HACER SIN BUCLES!!
}

object iniciarCajas{
	const coord = []
	var coordX=1
	var coordY=1
	

	method llenoVector(){//funcion que usa una especie de recursividad con el ontick para llenar el vector de coordenadas posibles para las paredes
		game.onTick(1,"llenaarray", {if (coordX == (game.width()-2) and coordY == (game.height()-2)){
			self.iniciar()
			
		}else{
			if ((coordX == 1 or coordX == game.width()-2) and (coordY == 1 or coordY == game.height()-2)){
				if (coordX==23){
						coordX=1
						coordY= coordY +2
					}else{coordX = coordX + 2}
			}
				else{
					coord.add(game.at(coordX, coordY))
					if (coordX==23){
						coordX=1
						coordY= coordY +2
					}else{coordX = coordX + 2}}
			
			}
			
			
			})
		
			
			//(game.width()-2) and coordY == (game.height()-2)
		
		
		}
		
	

//	method generarCajas(){
//		const nuevaPos = game.at(1.randomUpTo(23), fila)
//
//		if (nuevaPos == game.at(1, 1) or nuevaPos == game.at(23, 9)){
//			return self.generarCajas(fila)
//		}
//		return nuevaPos
//	}
//	
	method iniciar(){//elije al azar los lugares y los carga en pantalla
		game.removeTickEvent("llenaarray")
		66.times({i => game.addVisual(new Caja(position = coord.anyOne()))})}
	//}
	//} //genera las cajas medio random pero por fila
	
	
	
	
	
}

object config {
	
	var property estaReiniciado = false
	
	method gameOver(){
		game.say(jugador1, "Presiona R para reiniciar")
		keyboard.r().onPressDo({self.reiniciarJuego()})	//Intente armar metodo para reiniciar el juego pero no se puede mover el jugador
	}
	
	method reiniciarJuego(){
		if (!estaReiniciado){
		game.clear()
		iniciarParedes.iniciar()
		iniciarCajas.iniciar()
		enemigo1.creacolisionadores()
		jugador1.estaVivo(true)
		jugador1.cantBombas(0)
		enemigo1.cantBombas(0)
		enemigo1.image("BOMBITARODRIGUEZ.png")
		enemigo1.reload(true)
		jugador1.position(game.at(1, 1))
		enemigo1.position(game.at(23,9))
		game.addVisual(jugador1)
		game.addVisual(enemigo1)
		self.configurarTeclas()
		self.configurarSeguimiento(enemigo1)
		self.configurarColisiones(jugador1)
		self.configurarColisiones(enemigo1)
		self.tomarMejora(jugador1)
		
		estaReiniciado = true
		//JUEGO
		
		
		}
	}

	method tomarMejora(jugador) {
		game.onCollideDo(jugador, {objeto => 
			if(objeto.esMejora()){
				jugador.agarrarMejora(objeto)
				game.removeVisual(objeto)
			} //agarra las mejoras y las agrega a la lista del personaje
		})
	}

	method configurarColisiones(jugador) {
		game.onCollideDo(jugador, {objeto =>
			if(objeto.esCaja() || objeto.esPared() || objeto.esBomba()){
				jugador.volver()
			}
			}) //metodo para que el jugador y el enemigo colisionen
	}
	
	method configurarTeclas() {
		keyboard.left().onPressDo({ self.verificarPosicionX(jugador1.position().left(1)) })
		keyboard.right().onPressDo({self.verificarPosicionX(jugador1.position().right(1)) })
		keyboard.down().onPressDo({ self.verificarPosicionY(jugador1.position().down(1)) })
		keyboard.up().onPressDo({ self.verificarPosicionY(jugador1.position().up(1)) })
		keyboard.k().onPressDo({ jugador1.soltarBomba(jugador1.position())})
	}
	
	method verificarPosicionX(as){
		if (as.x().between(1,23)){
			jugador1.irA(as)
		}
	}
	
	method verificarPosicionY(as){
		if (as.y().between(1,9)){
			jugador1.irA(as)
		}
		
	}
	
	

	method configurarSeguimiento(enemigo){
		game.onTick(2300,"Persigue", {enemigo.Persigue(jugador1.position() ,jugador1.position().x(), jugador1.position().y())})
	}

}