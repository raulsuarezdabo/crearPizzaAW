//
//  CheeseInterfaceController.swift
//  CreaPizzaAW
//
//  Created by Raul Suarez Dabo on 26/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import WatchKit
import Foundation


class CheeseInterfaceController: WKInterfaceController {
    
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
    
    @IBAction func cheeseMozarelaAction() {
        callNextView(PizzaCheese.mozarela)
    }

    @IBAction func cheeseCheddarAction() {
        callNextView(PizzaCheese.cheddar)
    }
    
    @IBAction func cheeseParmesanoAction() {
        callNextView(PizzaCheese.parmesano)
    }
    
    @IBAction func cheeseNoCheeseAction() {
        callNextView(PizzaCheese.none)
    }
    
    func callNextView(cheese: PizzaCheese) {
        self.myPizza?.setCheese(cheese)
        pushControllerWithName("ingredientsViewController", context: self.myPizza)
        
    }
    
}
