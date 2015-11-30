// Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial;
    }
}

class Auto{
    var velocidad: Velocidades?;
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.apagado);
    }
    
    func cambioVelocidad() -> (actual: Int, velocidadEnCadena: String){
        var act: Int = self.velocidad!.rawValue;
        var cadena: String?;
        switch(act){
        case 0: velocidad = Velocidades(velocidadInicial: Velocidades.velocidadBaja); cadena = "Velocidad Baja"; break;
        case 20: velocidad = Velocidades(velocidadInicial: Velocidades.velocidadMedia); cadena = "Velocidad Media"; break;
        case 50: velocidad = Velocidades(velocidadInicial: Velocidades.velocidadAlta); cadena = "Alta"; break;
        case 120: velocidad = Velocidades(velocidadInicial: Velocidades.apagado); cadena = "Apagado"; break;
        default: velocidad = Velocidades(velocidadInicial: Velocidades.apagado);cadena = "Apagado"; break;
        }
        return (self.velocidad!.rawValue, cadena!);
    }
}

var auto = Auto();

for(var i=0; i < 20; i++){
    var respuesta = auto.cambioVelocidad();
    println("\(respuesta.0), \(respuesta.1)");
}