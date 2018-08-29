object shrek {

	/* La referencia a misiones es FIJA. Lo que cambiará son las referencias
	 * desde misiones hacia los objetos que apunta.
	 * osea... las listas van con CONST.*/
	const misiones = []

	method cantidadMisiones() = misiones.size()

	method agregarMision(mision) {
		misiones.add(mision)
	}

	method eliminarMisiones() {
		misiones.clear()
	}

	// FILTER
	/* El filter devuelve OTRA colección o lista que referencia a los objetos filtrados
	 * De esta manera, no tengo efecto colateral
	 */
	method misionesDificiles() = misiones.filter({ mision => mision.esDificil() })

	// MAP
	/* El map actua de manera similar... cuando aplico map tambien genero una nueva
	 * colección, pero en lugar de apuntar a los mismos objetos, apunta a los objetos que 
	 * apuntan ESOS objetos (cuak).
	 */
	method solicitantes() = misiones.map({ mision => mision.solicitante() }).asSet()

	method puntos() = misiones.sum{ mision => mision.puntosRecompensa() }

	method cumplirMisiones() {
		misiones.forEach({ mision => mision.cumplir()})
	}

}

object liberarAFiona {

	var cantidadTrolls = 5
	var puntosRecompensa = 100
	var cumplida = false

	method esDificil() = cantidadTrolls.between(4, 5)

	method solicitante() = "Fardquad"

	method puntosRecompensa() = puntosRecompensa

	method cumplir() {
		cumplida = true
	}

}

object buscarItemMagico {

	var kilometrosDistancia = 50
	var puntosRecompensa = 100
	var cumplida = false

	method esDificil() = kilometrosDistancia > 100

	method solicitante() = "Gandalf"

	method puntosRecompensa() = puntosRecompensa

	method cumplir() {
		cumplida = true
	}

}

