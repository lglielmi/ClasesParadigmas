/** First Wollok example 

 * Formateador>	Ctrl + Shif + F 
 * Ayuda Contextual> Ctrl + 1

 */
object galvan {

	var fondo = 300000

	method pagar(empleado) {
		fondo = fondo - empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

object baigorria {

	var precioEmpanada = 15
	var cantidadEmpanadasVendidas = 0
	var dinero = 0
	var deuda = 0

	method sueldo() = cantidadEmpanadasVendidas * precioEmpanada

	method venderEmpanada(cantidad) {
		cantidadEmpanadasVendidas += cantidad
	}

	method cobrarSueldo() {
		var sueldoPosta = self.sueldo() - deuda
		if (sueldoPosta > 0) {
			// tengo plata a favor
			dinero += sueldoPosta
			deuda = 0
		}else {
			deuda += sueldoPosta
			dinero = 0
		}
	}

	method gastar(cuanto){
		const resto = dinero - cuanto
		if (resto >= 0) {
			dinero = resto
		} else {
			dinero = 0
			deuda += resto * (-1)
		}
	}
	method totalDeuda() = deuda
	
	method totalDinero() = dinero
	
}

object gimenez {

	var sueldo = 15000
	var totalCobrado = 0

	method sueldo() = sueldo

	method sueldo(_sueldo) {
		sueldo = _sueldo
	}

	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}

}

