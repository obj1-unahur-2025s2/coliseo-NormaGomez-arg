class Grupo{
    var property nombre
    var property cantDePeleas 
    const property miembros = []
    const creadorEsMirmillon
    const property colegas = []
    method agregarMiembro(gladiador) {self.miembros().add(gladiador)}
    method quitarMiembro(gladiador) {self.miembros().remove(gladiador)}
    method campeon() =(self.miembros().max({g=>g.fuerza()}))  
    method poderAtaqueColegas() = self.colegas().sum({ c => c.poderAtaque() })
    method definirNombre() {
    if (creadorEsMirmillon) {
      nombre = "mirmillolandia"}
    else {
      nombre = "D-" + self.poderAtaqueColegas()
    }
  }

    
}