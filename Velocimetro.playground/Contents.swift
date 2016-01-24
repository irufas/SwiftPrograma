//: Playground - IRP - Semana 4 - Velocímetro

import UIKit

enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(){
        self = .Apagado
    }
}

class Auto {
    var Velocidad : Velocidades
    
    init (){
        Velocidad = Velocidades()
    }
    
    func cambioDeVelocidad () -> (VelocidadIncrementada : Int, KM: String){
        //var velocidadIncrementada : Int
        var mensaje : String
        switch Velocidad.rawValue {
            case 0:
                Velocidad = .VelocidadBaja
                mensaje = "Velocidad Baja"
            case 20:
                Velocidad = .VelocidadMedia
                mensaje = "Velocidad Media"
            case 50:
                Velocidad = .VelocidadAlta
                mensaje = "Velocidad Alta"
            default:
                Velocidad = .VelocidadMedia
                mensaje = "Velocidad Media"
            
        }
        
        return (Velocidad.rawValue, mensaje)
    
    }
}

var MiAuto = Auto()
MiAuto.Velocidad
print("1 . \(MiAuto.Velocidad.rawValue) , Apagado" )
for var i = 2; i <= 20; i++ {
    var (VelocidadIncrementada, KM) = MiAuto.cambioDeVelocidad()
   print("\(i) . \(VelocidadIncrementada) , \(KM)" )
}
