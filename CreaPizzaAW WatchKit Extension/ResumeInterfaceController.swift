//
//  ResumeInterfaceController.swift
//  CreaPizzaAW
//
//  Created by Raul Suarez Dabo on 27/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import WatchKit
import Foundation


class ResumeInterfaceController: WKInterfaceController {
    
    
    var myPizza: Pizza?
    
    @IBOutlet var sizeLabel: WKInterfaceLabel!

    @IBOutlet var typeLabel: WKInterfaceLabel!
    
    @IBOutlet var cheeseLabel: WKInterfaceLabel!
    
    @IBOutlet var ingredientsLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.myPizza = context as? Pizza
        sizeLabel.setText(self.myPizza?.getSizeToString())
        typeLabel.setText(self.myPizza?.getTypeToString())
        cheeseLabel.setText(self.myPizza?.getCheeseToString())
        ingredientsLabel.setText(self.myPizza?.getIngredientsToString())
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func callNextView() {
        //pushControllerWithName("finishInterfaceController", context: self.myPizza)
        let okAction = WKAlertAction(
            title: "Encargar",
            style: WKAlertActionStyle.Default) { () -> Void in
                self.popToRootController()
        }
        let reviewAction = WKAlertAction(
            title: "Revisar",
            style: WKAlertActionStyle.Default) { () -> Void in
        }
        self.presentAlertControllerWithTitle("¡Atención!", message: "Confirmas el encargo de la pizza", preferredStyle: WKAlertControllerStyle.Alert, actions: [okAction, reviewAction])
    }
}
