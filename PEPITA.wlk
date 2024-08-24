object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}


object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}


object pepon {
	var energia = 30

	method energia(_energia) {
		energia = _energia	
	}

	method comer(comida) {
		energia = energia + (comida.energiaQueAporta() / 2)
	}

	method volar(distancia) {
		energia = energia - 20 - 2 * distancia
	}
}



object roque {
	var pajaroActual = pepita
	var cantidadDeCenas = 0
	method pajaro(pajaro){
		pajaroActual = pajaro
		cantidadDeCenas = 0
	} 
	
	method alimentar(comida) {
		 pajaroActual.comer(comida) 
		 cantidadDeCenas = cantidadDeCenas + 1
	}

	method cenas() {
		return cantidadDeCenas
	}
}

/*Las pruebas las estoy ejecutando en wollok, ya que no pude configurar el vsc para ejecutarlo.
intentare solucionarlo.*/