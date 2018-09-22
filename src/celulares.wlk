object juliana {
	var property celular = motorola
	method llamarA(alguien, duracion) {
		celular.restarBateria(duracion)
		alguien.celular().restarBateria(duracion)
	}
}

object motorola {
	var property bateria = 5
	method restarBateria(duracion) {
		bateria = 0.max(bateria - 0.25)
	}
	method estaApagado() = bateria == 0
}
 
object catalina {
	var property celular = iPhone
	method llamarA(alguien, duracion) {
		celular.restarBateria(duracion)
		alguien.celular().restarBateria(duracion)
	}
}

object iPhone {
	var bateria = 5
	method bateria() = bateria 
	method restarBateria(duracion) {
		bateria -= duracion * 0.001
	}
}
