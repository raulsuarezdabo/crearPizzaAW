//
//  Pizza.swift
//  CreaPizza
//
//  Created by Raul Suarez Dabo on 13/12/15.
//  Copyright © 2015 Raul Suarez Dabo. All rights reserved.
//

import Foundation

class Pizza {
    var size: PizzaSize?
    
    var type: PizzaType?
    
    var cheese: PizzaCheese?
    
    var ingredients: [PizzaIngredients]?
    
    func setSize(size: PizzaSize) {
        self.size = size
    }
    
    func getSize() ->PizzaSize {
        return self.size!
    }
    
    func getSizeToString() ->String {
        switch(self.getSize()) {
        case PizzaSize.chica:
            return "Chica"
        case PizzaSize.mediana:
            return "Mediana"
        case PizzaSize.grande:
            return "Grande"
        }
    }
    
    func setType(type: PizzaType) {
        self.type = type
    }
    
    func getType() ->PizzaType {
        return self.type!
    }
    
    func getTypeToString() ->String {
        switch(self.getType()) {
        case PizzaType.crujiente:
            return "Crujiente"
        case PizzaType.delgada:
            return "Delgada"
        case PizzaType.gruesa:
            return "Gruesa"
        }
    }
    
    func setCheese(cheese: PizzaCheese) {
        self.cheese = cheese
    }
    
    func getCheese() ->PizzaCheese {
        return self.cheese!
    }
    
    func getCheeseToString() ->String {
        switch(self.getCheese()) {
        case PizzaCheese.cheddar:
            return "Cheddar"
        case PizzaCheese.mozarela:
            return "Mozarela"
        case PizzaCheese.parmesano:
            return "Parmesano"
        case PizzaCheese.none:
            return "Sin queso"
        }
    }
    
    func addIngredient(ingredient: PizzaIngredients) {
        if (self.ingredients == nil) {
            self.ingredients = [PizzaIngredients]()
        }
        if (self.ingredients?.contains(ingredient) == false) {
            self.ingredients?.append(ingredient)
        }
    }
    
    func removeIngredient(ingredient: PizzaIngredients) {
        if(self.ingredients?.contains(ingredient) == true) {
            let index: Int = self.ingredients!.indexOf(ingredient)!
            self.ingredients?.removeAtIndex(index)
        }
    }
    
    func clearIngredients() {
        self.ingredients?.removeAll()
    }
    
    func getIngredients() -> [PizzaIngredients] {
        return self.ingredients!
    }
    
    func checkIngredientsIsValid() -> Bool {
        if ((self.ingredients?.count >= 1) && (self.ingredients?.count <= 5)) {
            return true
        }
        else {
            return false
        }
    }
    
    func getIngredientsToString() ->String {
        var str = ""
        for ingredient in self.ingredients! {
            if (self.ingredients?.first == ingredient) {
                str = str + "\(ingredient) "
            }
            else {
                str = str + ",\(ingredient) "
            }
        }
        return str
    }
}