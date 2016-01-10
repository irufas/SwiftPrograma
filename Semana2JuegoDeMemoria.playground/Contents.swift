//: Reto semana 2: Juego de memoria - Inma Rufas

import UIKit

var numeros = 0 ... 100

for i in numeros {
    if i % 2 == 0 {
        print("# \(i) es PAR")
        if i % 5 == 0{
            print("# \(i) BINGO")
        }
        if i > 30 && i < 40 {
            print("# \(i) Viva Swift")
        }
        
    }else{
        print("# \(i) es IMPAR")
        if i % 5 == 0{
            print("# \(i) BINGO")
        }
        if i > 30 && i < 40 {
            print("# \(i) Viva Swift")
        }
        
    }
}
