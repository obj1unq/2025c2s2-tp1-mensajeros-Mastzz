// ¿ Puede ser entregado ?
// ¿ Quien lo entrega?
// ¿ En donde se entrega?

// Paquete
object paquete {
    var property estaPago = true
}
// Destinos
object puenteBrooklyn{
    method puedePasar(mensajero){
        return mensajero.peso() <= 1000
    }
}
object laMatrix {
    method puedePasar(mensajero){
        return mensajero.puedeHacerLlamada()
    }
}

// Mensajeros
object jeanGray {
    const property peso=65
    method puedeHacerLlamada(){return true}
    method puedeEntregar(paquete, destino){
        return paquete.estaPago() && destino.puedePasar(self)
    }
}
object neo {
    const property peso=0
    var property tieneCredito=true
    method puedeHacerLlamada(){return tieneCredito}
    method puedeEntregar(paquete, destino){
        return paquete.estaPago() && destino.puedePasar(self)
    }
}
object saraConnor{
    var property peso=60
    var property vehiculo=moto
    method peso(){
        return peso + vehiculo.peso()
    } 
    method puedeEntregar(paquete, destino){
        return paquete.estaPago() && destino.puedePasar(self)
    }
}

// Medio de transporte (para Sara)
object moto {
    const peso = 100
    method peso(){return peso}  
}
object camion {
    const pesoBase=500
    var property cantidadDeAcoplados=1
    method pesoBase(){return pesoBase}
    method peso(){
        return self.pesoBase() + self.pesoPorAcoplados()
    }
    method pesoPorAcoplados(){
        return self.cantidadDeAcoplados() * 500
    }
}