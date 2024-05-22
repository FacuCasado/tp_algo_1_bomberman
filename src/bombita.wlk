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