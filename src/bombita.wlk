import wollok.game.*
import config.*
import otros.*
import bombas.*



class Jugador {
	
	var property radio = 5
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
	const property image = "BOMBITARODRIGUEZ.png"
	var property cantBombas = 0
 	var property velocidad = 1
  	var property escudo = false
  	var property mejoras = []
  
	
	method soltarBomba(posicion){
	if(self.cantBombas()<3){ 
		self.cantBombas(self.cantBombas()+1)
		game.addVisual(new Bomba().PoneBomba(posicion))
	}else{}
	}
	
	method irA(nuevaPosicion) {
	//	if (game.colliders(jugador1)==)
		position = nuevaPosicion
		return true
	}
	
	method agarrarMejora(){
		const mej = game.colliders(self).map({
			e => if(e.esMejora()) {
				game.removeVisual(e)
				return e
			}
		})
		return true
	}
	method esMejora(){return false}

}

class Enemigos {
	
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
	var property image = "BOMBITARODRIGUEZ.png"
	
	
	
	method Persigue(posicionX, posicionY){
	if (1 == 1){self.Ir(1)}
	else if(posicionX > self.position().x()){self.Ir(2)}
	
	}
	



	method Ir(va){
//	if(va==1){
		self.position().right(1)
//	}else if(va==2){self.position().left(1)}
}
//tiene que chequear que este mas a la izquierda, derecha arriba o abajo
}

class Colisionador {
	var property jugador
	var property position
	
	method irA(nuevaPos){
		position = nuevaPos
	}
	
	method seguir(){
		keyboard.left().onPressDo({ self.irA(self.position().left(1)) })
		keyboard.right().onPressDo({ self.irA(self.position().right(1))})
		keyboard.down().onPressDo({ self.irA(self.position().down(1)) })
		keyboard.up().onPressDo({ self.irA(self.position().up(1))})
	}
	
	method choca(){
		
	}
	
	method image() = "cajita.png"
}

const colisionadorArribaP1 = new Colisionador(
	jugador = jugador1, 
	position = jugador1.position().up(1)
)

const colisionadorDerechaP1 = new Colisionador(
	jugador = jugador1,
	position = jugador1.position().right(1)
)

const colisionadorIzquierdaP1 = new Colisionador(
	jugador = jugador1,
	position = jugador1.position().left(1)
)

const colisionadorAbajoP1 = new Colisionador(
	jugador = jugador1,
	position = jugador1.position().down(1)
)
