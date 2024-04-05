object lobo{
	var pesaje = 10
	method cuantoPesa(){
		return pesaje
	}
	
	method estaSaludable(){
		return 20 < pesaje and pesaje < 150
	}
	
	method subirPeso(peso){
		pesaje = pesaje + peso
	}
	
	method bajarPeso(peso){
		pesaje = pesaje - peso
	}
	
	method crisis(){
		pesaje = 10
	}
	
	method comer(queCome){
		pesaje =  pesaje + (0.10 * queCome.cuantoPesa())
	}
	
	method correr(){
		pesaje = pesaje - 1
	}
	
	method luchar(){
		if (pesaje > cazador.potencia()) lobo.comer(cazador) else lobo.crisis()
	}
	
	method susto(){
		if (pesaje < cazador.potencia()) pesaje = pesaje - (caperucita.cuantoPesa() * 0.10 + abuela.cuantoPesa() * 0.10 + canastaDeManzanas.cuantoPesa() * 0.10)
	}
	
	method soplar(resistencia){
		pesaje = pesaje - resistencia
	}
}	

object caperucita{
	var pesaje = 60
	
	method cuantoPesa(){
		return pesaje
	}
}

object canastaDeManzanas{
	var manzanas = 6

	method agregarManzanas(cantidad){
		manzanas = manzanas + cantidad
	}
	
	method quitarManzanas(cantidad){
		manzanas = manzanas - cantidad
	}
	
	method cuantoPesa(){
		return manzanas * 0.20
	}
	
}

object abuela{
	var pesaje = 50
	
	method cuantoPesa(){
		return pesaje
	}
}

object cazador{
	var pesaje = 90
	var filoDelHacha = 50
	var fuerza = (pesaje / 10) * (filoDelHacha / 10)
	
	method potencia(){
		return (pesaje + filoDelHacha + fuerza) / 2
	}
	
	method cuantoPesa(){
		return pesaje
	}
}

object casaDePaja{
	var resistencia = 0
	var pesaje = 15
	
	method cuantoPesa(){
		return pesaje
	}
	
	method aguante(){
		return resistencia + pesaje
	}
}

object casaDeMadera{
	var resistencia = 5
	var pesaje = 15 + 25
	
	method cuantoPesa(){
		return pesaje
	}
	
	method aguante(){
		return resistencia + pesaje
	}
}

object casaDeLadrillo{
	var cantLadrillos = 10
	var resistencia = 2 * cantLadrillos
	var pesaje = 15 + 25 + 35
	
	method cuantoPesa(){
		return pesaje
	}
	
	method aguante(){
		return resistencia + pesaje
	}
}


