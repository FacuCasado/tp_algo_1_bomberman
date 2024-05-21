import wollok.game.*
import bombita.*

class Caja {
	
	const property image = "cabildofrente.png"
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
		
		
		method seQuemo(){
			game.removeVisual(self)
		
}
}


class Fuego{
var property position = game.at(0,0)
const property image = "Fuego.png" 
	
	method Destruye(){
		
	
		game.onCollideDo(self,{a => a.seQuemo()})
		game.removeVisual(self)
}

	method poneFuego(posicion){
		self.position(posicion)
		game.schedule(1000, {self.Destruye()})
		
		
		
		return self
	}
	


}

object caj2{
	var property position = game.at(5,9)
	const property image = "cajita.png" 
	method seQuemo(){
			game.removeVisual(self)
		
}
}