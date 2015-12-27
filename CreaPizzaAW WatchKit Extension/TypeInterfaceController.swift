//
//  TypeInterfaceController.swift
//  CreaPizzaAW
//
//  Created by Raul Suarez Dabo on 26/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import WatchKit
import Foundation


class TypeInterfaceController: WKInterfaceController {
    
    var myPizza: Pizza?

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.myPizza = context as? Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func typeDelgadaAction() {
        callNextView(PizzaType.delgada)
    }
    
    @IBAction func typeCrujienteAction() {
        callNextView(PizzaType.crujiente)
    }
    
    @IBAction func typeGruesaAction() {
        callNextView(PizzaType.gruesa)
    }
    
    func callNextView(type: PizzaType) {
        self.myPizza?.setType(type)
        pushControllerWithName("cheeseViewController", context: self.myPizza)
        
    }

}
