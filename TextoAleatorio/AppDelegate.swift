//
//  AppDelegate.swift
//  TextoAleatorio
//
//  Created by Leonardo Guzman on 2/12/17.
//  Copyright © 2017 Leonardo Guzman. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController : MainWindowController?;

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        //Enlazo el xib con el controllador
        let mainWindowController = MainWindowController();
        
        //Coloca el controlador en la pantalla
        mainWindowController.showWindow(self);
        
        //Almacenamos el controlador en una variable global
        self.mainWindowController = mainWindowController;
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}

