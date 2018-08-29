object pepita {

	var energia = 100
	var esFeliz = false

	method energia() = energia

	method comer(gramos) {
		energia = energia + 4 * gramos
	}

	method volar(kms) {
		energia = energia - (kms + 10)
	}

//TDD me dice que primero creo los casos de prueba, y despues desarrollo para que funcionen.
	method juga() {
		esFeliz = true
	}

	method esFeliz() = esFeliz

}

