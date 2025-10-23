import armas.*

class Mirmillon {
  var property vidas = 100
  var property fuerza 
  method armadura() = 10 + (5 +( 15 *0.1))
  method arma() = ArmaDeFilo
  method usaCasco() = true
  method usaEscudo() = true
  method destreza() = 15
  method ataca(){}
  method danio(atacado) = self.poderAtaque()- atacado.defensa()
  method poderAtaque() = self.arma().poder() + self.fuerza()
  method defensa() = self.armadura() + self.destreza()

  
}

class Dimachaerus {
  var property vidas = 100
  var property armas = []
  var property destreza
  method fuerza() = 10
  method ataca() = destreza + 1
  method danio(atacado) = self.poderAtaque()- atacado.defensa()
  method poderAtaque() = self.fuerza() + self.armas().sum({ a => a.poder() })
  method defensa(gladiador)= self.destreza() / 2

}