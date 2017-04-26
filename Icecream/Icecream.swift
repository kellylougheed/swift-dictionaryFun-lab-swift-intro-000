//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = ["Joe": "Peanut Butter and Chocolate",
                                                       "Tim": "Natural Vanilla",
                                                       "Sophie": "Mexican Chocolate",
                                                       "Deniz": "Natural Vanilla",
                                                       "Tom": "Mexican Chocolate",
                                                       "Jim": "Natural Vanilla",
                                                       "Susan": "Cookies 'N' Cream",
                                                       ]
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var namesArray: [String] = []
        for (name, ICflavor) in favoriteFlavorsOfIceCream {
            if ICflavor == flavor {
                namesArray.append(name)
            }
        }
        return namesArray
    }
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var count = 0
        for (_, flav) in favoriteFlavorsOfIceCream {
            if flav == flavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if let flavor = favoriteFlavorsOfIceCream[person] {
            return flavor
        } else {
            return nil
        }
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] != nil) {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] != nil) {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        }
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if (favoriteFlavorsOfIceCream[person] != nil) {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
        }
        return true
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var sentence: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            if let flavor = favoriteFlavorsOfIceCream[name] {
                if sentence != "" {
                    sentence += "\n"
                }
                sentence += "\(name) likes \(flavor)"
            }
        }
        return sentence
    }
    
    
    
    
    
    
    

}
