//
//  Meal.swift
//  food tracker
//
//  Created by Sasha Dubikovskaya on 22.05.2018.
//  Copyright © 2018 food tracker. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init(name: String, photo: UIImage, rating: Int) {
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}
