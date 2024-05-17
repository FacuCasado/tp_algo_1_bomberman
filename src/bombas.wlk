import wollok.game.*

//Se instancia al colocar una bomba, el radio va a ser el radio que tenga el usuario seteado
class Bomba {
	var property radio = 1
	var property tiempoExplosion = 2
	var property position = game.at(0,0)
	const property image = "Bomba.png"
	
	method explotar(){
		//destruir lo que entre en el radio al pasar el tiempo de explosion
	}
}