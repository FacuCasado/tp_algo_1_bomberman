//class tomaMate{
//	var property image
//	
//	method activar(personaje){
//		game.schedule(5000, self.desactivar())
//		personaje.escudo(true)
//	}
//	
//	method desactivar(personaje){
//		personaje.escudo(false)
//	}
//}
//
//class fumaPorro{
//	var property nuevaVelocidad = 2
//	var property velDefault = 1
//	var property image = 'hoja.png'
//	
//	method activar(personaje){
//		game.schedule(5000, self.desactivar())
//		personaje.velocidad(nuevaVelocidad)
//	}
//	
//	method desactivar(personaje){
//		game.removeTickEvent('ActivaMejoraVelocidad')
//		personaje.velocidad(velDefault)
//	}
//}
//
//class comeAsado{
//	const nuevoRadio = 2
//	const radioDefault = 1
//	
//	method activar(personaje){
//		game.schedule(5000, self.desactivar())
//		personaje.radio(nuevoRadio)
//	}
//	
//	method desactivar(personaje){
//		personaje.radio(radioDefault)
//	}
//}