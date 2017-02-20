//
//  MainWindowController.swift
//  TextoAleatorio
//
//  Created by Leonardo Guzman on 2/12/17.
//  Copyright © 2017 Leonardo Guzman. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    //Referencia al textfield de la pantalla
    @IBOutlet weak var textfield : NSTextField?;
    
    override func windowDidLoad() {
        super.windowDidLoad();
    }
    
 
    //Metodo que se ejecuta cuando se da click al boton de generar texto
    @IBAction func onClickButtonGenerarTexto(sender : AnyObject){
        
        if let campo = textfield {
            
            let tamano = 10;
            let cadena = ramdomString(tamano: tamano);
            campo.stringValue = cadena;
            
        }
    }
    
    
    override var windowNibName : String? {
        return "MainWindowController"
        
    }
}
