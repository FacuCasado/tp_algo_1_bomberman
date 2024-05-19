import wollok.game.*
import bombita.*

class Caja {
	
	const property image = "cabildofrente.png"
	var property position = game.at(0.randomUpTo(25),0.randomUpTo(11))
	
	method removerConProbabilidadDeMejora() {
        game.removeVisual(self)
        if (0.randomUpTo(1) == 0) {
            self.generarMejora()
     	}
    }

    method generarMejora() {
        var mejora
        var opcion = 0.randomUpTo(2)
        
        if (opcion == 0) {
            mejora = new tomaMate()
        } else if(opcion == 1){
            mejora = new fumaPorro()
        } else {
        	mejora = new comeAsado()
        }

        mejora.activar()
        game.addVisual(mejora)
    }
		
}