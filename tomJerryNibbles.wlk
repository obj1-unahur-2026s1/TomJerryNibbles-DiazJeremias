object tom {
     var energia = 50

     method comer(raton) {
          energia = energia + 12 + raton.peso()
     }
     method correr(metros) {
          energia = energia - self.consumoPorCorrer(metros)
     }
     method consumoPorCorrer(metros) {
          return metros / 2
     }
     method velocidadMaxima() {
          return 5 + (energia / 10)
     }
     method energia() {
          return energia
     }
     method puedeCazar(distancia) {
          return self.consumoPorCorrer(distancia) < energia
     }
     method cazarRaton(unRaton, distancia) {
          if(self.puedeCazar(distancia)) {
               self.correr(distancia)
               self.comer(unRaton)
          }
     }
}

object jerry {
     var edad = 2

     method cumplirAnios() {
          edad = edad + 1
     }
     method peso() {
          return edad * 20
     }
}

object nibbles {
     method peso() {
          return 35
     }
}

// Inventar otro ratón