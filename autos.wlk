object ferrari {
  var motor = 87
  method estaEnCondiciones(){
    return motor >= 65
  }
  method reparar(){
    motor = 100
  }
  method velocidadMaxima(){
    if(motor > 75){return 125} else{return 110}
  }
  method hacerPrueba(){
    motor = (motor - 30).max(0)
  }
}

object flechaRubi {
  var combustible = 100
  var tipoCombustible = gasolina
  var color = azul
  method estaEnCondiciones(){
    return combustible > tipoCombustible.nivelMinimo() && color == rojo
  }
  method hacerPrueba(){
    combustible = combustible - 5
  }
  method reparar(){
    combustible *= 2
    color = color.cambiarColor()
  }
  method velocidadMaxima(){
    tipoCombustible.definirVelocidad(combustible)
  }
}

object gasolina {
  method nivelMinimo(){
    return 85
  }
  method definirVelocidad(unaVelocidad){
    return 2 * unaVelocidad + 10
  }
}

object nafta {
  method nivelMinimo(){
    return 50
  }
  method definirVelocidad(unaVelocidad){
    return 2 * unaVelocidad - 2 * unaVelocidad * 10 / 100
  }
}

object nitrogeno {
  method nivelMinimo(){
    return 0
  }
  method definirVelocidad(unaVelocidad){
    return 2 * unaVelocidad * 10
  }
}

object azul {
  method cambiarColor(){
    return verde
  }
}

object verde {
  method cambiarColor(){
    return rojo
  }
}

object rojo {
  method cambiarColor(){
    return azul
  }
}

object intocable {

}

object alpine {

}