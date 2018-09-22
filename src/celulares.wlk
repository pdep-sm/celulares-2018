object juliana {
	var property celular = motorola
	
	method llamarA(alguien, duracion) {
		celular.llamar(duracion)
		alguien.recibirLlamado(duracion)
	}
	method recibirLlamado(duracion){
		celular.recibirLlamado(duracion)
	}
}

object motorola {
	var property bateria = 5
		
	method llamar(duracion){
		self.restarBateria(duracion)
	}	
	method recibirLlamado(duracion) {
		self.restarBateria(duracion)
	}
	method restarBateria(duracion) {
		bateria = 0.max(bateria - 0.25)
	}
	method estaApagado() = bateria == 0
}
 
object catalina {
	var property celular = iPhone
	
	method llamarA(alguien, duracion) {
		celular.llamar(duracion)
		alguien.recibirLlamado(duracion)
	}
	method recibirLlamado(duracion){
		celular.recibirLlamado(duracion)
	}
}

object iPhone {
	var property bateria = 5
	
	method llamar(duracion){
		self.restarBateria(duracion)
	}	
	method recibirLlamado(duracion) {
		self.restarBateria(duracion)
	}
	method restarBateria(duracion) {
		bateria = 0.max(bateria - duracion * 0.001)
	}
	method estaApagado() = bateria == 0
}
