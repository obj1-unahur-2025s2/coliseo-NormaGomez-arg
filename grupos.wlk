class Grupo{
    var nombre
    var cantDePeleas = 0
    const property miembros = []
    
    method agregarMiembro(gladiador) {miembros.add(gladiador)}
    method quitarMiembro(gladiador) {miembros.remove(gladiador)}
    method campeon() =(self.puedenCombatir().max({g=>g.fuerza()}))  
    method puedenCombatir() = miembros.filter({g=> g.vidas()>0})
    method ataca(atacado) {
      self.campeon().ataca(atacado)
      cantDePeleas = cantDePeleas + 1
    }
    
      
}