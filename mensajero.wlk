// ¿ Puede ser entregado ?
// ¿ Quien lo entrega?
// ¿ En donde se entrega?

// Destinos
object puenteBrooklyn{
    method dejaPasar(mensajero){
        return mensajero.peso() <= 1000
    }
}
object laMatrix {
    method dejaPasar(mensajero){
        return mensajero.puedeHacerLlamada()
    }
}

// Mensajeros
object jeanGray {
    const property peso=65
    method puedeHacerLlamada(){return true}
}
object neo {
    const property peso=0
    var tieneCredito=true
    method puedeHacerLlamada(){return tieneCredito} 
}
object saraConnor{
    var property peso=60
    var property vehiculo=moto
    method peso(){
        return peso + vehiculo.peso()
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