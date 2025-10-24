import gladiadores.*
class ArmaDeFilo {
  var property filo
  const property longitud
  method poder() = filo * longitud
  }
class Contundente {
  var property peso = 3
  method poder() = peso
  }

  object casco{
  method armadura(gladiador) = 10

  }

  object escudo{
    method armadura(gladiador)= 5 + (gladiador.destreza()*0.1)
  }

