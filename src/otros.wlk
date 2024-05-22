import wollok.game.*
import bombita.*
import mejoras.*

class Caja {
	
	const property image = "cabildofrente.png"
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
	
	method removerConProbabilidadDeMejora() {
        game.removeVisual(self)
        
       if (0.randomUpTo(2).roundUp() == 1) {
            self.generarMejora()
     	}
    }

    method generarMejora() {
        
        const mejora = [
        new TomaMate(position = self.position(), image='bombita.png')
        ,new FumaPorro(position = self.position(), image = 'cajita.png')
        ,new ComeAsado(position = self.position(), image='Bomba.png')
        ].anyOne()
        
        game.addVisual(mejora)
    }
		
		
	method seQuemo(){
		self.removerConProbabilidadDeMejora()
	}
	
	method esMejora(){return false}
}


class Fuego{
var property position = game.at(0,0)
const property image = "Fuego.png" 
	
	method Destruye(){
		const collidObj = game.colliders(self)
		
		if(collidObj != []){
			collidObj.forEach({e=>e.seQuemo()})
		}
		
		game.removeVisual(self)	
	}

	method poneFuego(posicion){
		self.position(posicion)
		game.schedule(1000, {self.Destruye()})
		return self
	}
	
	method seQuemo(){}
	method esMejora(){return false}
	


}