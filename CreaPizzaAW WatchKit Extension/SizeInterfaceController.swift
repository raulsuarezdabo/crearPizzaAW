//
//  SizeInterfaceController.swift
//  CreaPizzaAW
//
//  Created by Raul Suarez Dabo on 26/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import WatchKit
import Foundation


class SizeInterfaceController: WKInterfaceController {
    
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

    @IBAction func sizeChicaAction() {
        callNextView(PizzaSize.chica)
    }
    
    @IBAction func sizeMedianaAction() {
        callNextView(PizzaSize.mediana)
    }
    
    @IBAction func sizeGrandeAction() {
        callNextView(PizzaSize.grande)
    }
    
    func callNextView(size: PizzaSize) {
        self.myPizza?.setSize(size)
        pushControllerWithName("typeViewController", context: self.myPizza)

    }
}
