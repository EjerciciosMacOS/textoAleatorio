//
//  TextoAleatorioModel.swift
//  TextoAleatorio
//
//  Created by Leonardo Guzman on 2/12/17.
//  Copyright © 2017 Leonardo Guzman. All rights reserved.
//

import Foundation

private let caracteres = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVXYZ";


//Metodo que genera un string aleatorio
func ramdomString( tamano : Int) -> String{
    
    var retorno = "";
    
    for _ in 0 ..< tamano {
        
        let caracter = ramdomCaracter();
        retorno.append(caracter);
    }
 
    return retorno;
}


//Metodo que obtiene una posicion aleatoria de la cadena de carecteres
func ramdomCaracter() -> Character{

    
    let posicion = Int(arc4random_uniform(UInt32(caracteres.characters.count) ));
    
    let index = caracteres.index(caracteres.startIndex, offsetBy : posicion);
    
    let retorno = caracteres[index];
    
    return retorno;
}
