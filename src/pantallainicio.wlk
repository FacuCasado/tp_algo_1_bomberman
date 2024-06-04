import wollok.game.*
import config.*
import otros.*
import bombas.*
import mejoras.*
import bombita.*
import Colisionadores.*

const personajes = #{"Bomba.png", "BOMBITARODRIGUEZ.PNG", "peron64"}


object pantallaInicio {
	var property estainicio = true
	var property elegido = 0
	var estaeligiendo = true
	method cambio(){
		if (estaeligiendo){
			if (elegido == 0){
				elegido =1
			}else {elegido =0}}
	}
	
	
	method On(){
		
		
		game.addVisual(botoninicio)
		game.addVisual(botonpersonaje)
		config.configurarTeclas()
		
	}
	
	method eligio(){
		if (elegido == 0){
			botoninicio.elegido()}
			else if (elegido == 1){
				botonpersonaje.elegido()
				elegido = 2
				estaeligiendo = false
			}else if(elegido == 2){elegido = 0
				game.clear()
				botonpersonaje.puedeelegir(false)
				estaeligiendo = true
				config.borraTeclas()
				self.On()
			}
		}
		
	
	
	method chequea(){
	
			return estainicio
		
		
	}
	
}


class Botones{
	var property position 
	var property image
	var property puedeelegir = false
	
	method elegido(){
		
		
	}
	
}

object botoninicio inherits Botones(position = game.at(11, 5), image = "bombita.png"){
	override method elegido(){
		pantallaInicio.estainicio(false)
		game.clear()
		config.borraTeclas()
		iniciarJugador1.iniciar()
		iniciarParedes.iniciar()
		iniciarCajas.iniciar()
	}
}


object botonpersonaje inherits Botones(position = game.at(11, 2), image = "bombita.png"){
	override method elegido(){
		game.clear()
		config.borraTeclas()
		game.addVisual(muestra)
		config.configurarTeclas()
		puedeelegir = true
	}
	
	method selPersonaje(){
		if (puedeelegir){
			muestra.imagen(personajes.anyOne())
		}else{}
		
	}
}

