import armas.*
import grupos.*

class Mirmillon {
  var vidas = 100
  const fuerza 
  var arma
  var armadura
  method vidas() = vidas
  method cambiarArmadura(otraArmadura) {armadura = otraArmadura}
  method cambiarArma(otraArma){arma = otraArma}
  method destreza() = 15
  method ataca(atacado){atacado.recibirAtaque(self.danio(atacado))}
  method danio(atacado) = self.poderAtaque()- atacado.defensa()
  method recibirAtaque(danio) {vidas = vidas - danio}
  method poderAtaque() = arma.poder() + fuerza
  method defensa() = armadura.armadura(self)+ self.destreza()

  method crearGrupo(otroGladiador){
    const grupo = new Grupo(nombre= "Mirmillolandia")
    grupo.agregarMiembro(self)
    grupo.agregarMiembro(otroGladiador)
  }
  method recuperaVidas(cantidad) {
    vidas = cantidad
  }
    
  

  
}

class Dimachaerus {
  var vidas = 100
  var armas = []
  var destreza
  method vidas() = vidas
  method fuerza() = 10
  method agragarArmas(unArma) {
    armas.add(unArma)
  }
  method ataca(atacado){
    atacado.recibirAtaque(self.danio(atacado)) 
    destreza = destreza + 1
  }
  method danio(atacado) = self.poderAtaque()- atacado.defensa()
  method recibirAtaque(danio) {vidas = vidas - danio}
  method poderAtaque() = self.fuerza() + armas.sum({ a => a.poder() })
  method defensa()= destreza / 2

  method crearGrupo(otroGladiador){
    const nombre = "D-" + (self.poderAtaque() + otroGladiador.poderAtaque()).toString()
    const grupo = new Grupo(nombre= nombre)
    grupo.agregarMiembro(self)
    grupo.agregarMiembro(otroGladiador)
  }
  method recuperaVidas(cantidad) {
    vidas = cantidad
  }
}