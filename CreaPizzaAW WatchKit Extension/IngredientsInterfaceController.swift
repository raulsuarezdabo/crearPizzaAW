//
//  IngredientsInterfaceController.swift
//  CreaPizzaAW
//
//  Created by Raul Suarez Dabo on 26/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import WatchKit
import Foundation


class IngredientsInterfaceController: WKInterfaceController {
    
    var myPizza: Pizza?
    
    @IBOutlet var submitButton: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.myPizza = context as? Pizza
        checkIfIsValid()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func ingredientJamonAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.jamon)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.jamon)
        }
        checkIfIsValid()
    }
    
    @IBAction func ingredientPepperoniAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.pepperoni)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.pepperoni)
        }
        checkIfIsValid()
    }

    @IBAction func ingredientPavoAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.pavo)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.pavo)
        }
        checkIfIsValid()
    }
    
    @IBAction func ingredientSalchichaAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.salchicha)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.salchicha)
        }
        checkIfIsValid()
    }
    
    @IBAction func ingredientAceitunaAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.aceituna)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.aceituna)
        }
        checkIfIsValid()
    }
    
    @IBAction func ingredientCebollaAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.cebolla)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.cebolla)
        }
        checkIfIsValid()
    }
    
    @IBAction func ingredientPimientoAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.pimiento)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.pimiento)
        }
        checkIfIsValid()
    }
    
    @IBAction func ingredientAnchoaAction(value: Bool) {
        if (value == true) {
            self.myPizza?.addIngredient(PizzaIngredients.anchoa)
        }
        else {
            self.myPizza?.removeIngredient(PizzaIngredients.anchoa)
        }
        checkIfIsValid()
    }
    
    func checkIfIsValid() {
        if (self.myPizza?.checkIngredientsIsValid() == false) {
            showAlert()
            self.submitButton.setEnabled(false)
        }
        else {
            self.submitButton.setEnabled(true)
        }
    }
    
    @IBAction func showAlert() {
        let defaultAction = WKAlertAction(
            title: "Entendido",
            style: WKAlertActionStyle.Default) { () -> Void in
        }
        self.presentAlertControllerWithTitle("¡Atención!", message: "Debes elegir entre uno y cinco ingredientes", preferredStyle: WKAlertControllerStyle.Alert, actions: [defaultAction])
    }
    
    @IBAction func callNextView() {
        if (self.myPizza?.checkIngredientsIsValid() == true) {
            pushControllerWithName("resumeViewController", context: self.myPizza)
        }
        else {
            showAlert()
        }
        
    }
}
