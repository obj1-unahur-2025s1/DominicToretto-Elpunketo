import autos.*

object dominic {
  const autos = []
  method comprar(unAuto){
    autos.add(unAuto)
  }
  method noEstanEnCondiciones(){
    return autos.filter({c=> !c.estaEnCondiciones()})
  }
  method estanEnCondiciones(){
    return autos.filter({c=> c.estaEnCondiciones()})
  }
  method mandarATaller(){
    taller.recibirAutos(self.noEstanEnCondiciones())
  }
  method pruebasDeVelocidad(){
    autos.forEach({c => c.hacerPrueba()})
  }
  method venderAutos(){
    autos.clear()
  }
  method promediosVelocidades(){
    return autos.sum({c=>c.velocidadMaxima()}) / autos.size()
  }
  method autoMasRapido(){
    return self.estanEnCondiciones().max({c=> c.velocidadMaxima()})
  }
  method esMasDelDoble(){
    if(self.autoMasRapido().velocidadMaxima() > self.promediosVelocidades() * 2){
      return 
    }
    else{
      return false
    }
  }
}

object taller {
  const autosAReparar = []
  method recibirAutos(listaDeAutos){
    autosAReparar.addAll(listaDeAutos)
  }
  method repararAutos(){
    autosAReparar.forEach({c=>c.reparar()})
    autosAReparar.clear()
  }
}
