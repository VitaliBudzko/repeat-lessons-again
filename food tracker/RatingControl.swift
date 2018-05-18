//
//  RatingControl.swift
//  food tracker
//
//  Created by Sasha Dubikovskaya on 18.05.2018.
//  Copyright © 2018 food tracker. All rights reserved.
//

import UIKit

@IBDesignable class RaitingControl: UIStackView {
    
    // MARK: Properties
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    private var ratingButton = [UIButton]()
    
    var rating = 0
    
    // MARK: Initialization
    // MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    // MARK: Private Methods
    private func setupButtons() {
        
        for _ in 0..<starCount {
        // Create the button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constrains
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
        button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
        
        // Setup the button action
        button.addTarget(self, action: #selector(RaitingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
            
        // Add the new button to the rating button array
        ratingButton.append(button)
    }
}
}





