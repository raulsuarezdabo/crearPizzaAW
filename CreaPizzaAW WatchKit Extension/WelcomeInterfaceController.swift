//
//  InterfaceController.swift
//  CreaPizzaAW WatchKit Extension
//
//  Created by Raul Suarez Dabo on 26/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import WatchKit
import Foundation


class WelcomeInterfaceController: WKInterfaceController {
    
    var myPizza: Pizza?

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func startAction() {
        self.myPizza = Pizza()
        pushControllerWithName("sizeViewController", context: self.myPizza)
    }
    
}
