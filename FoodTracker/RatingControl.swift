//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Siming Yuan on 6/2/16.
//  Copyright © 2016 Siming Yuan. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    //MARK:Properties
    var rating = 0 {
        didSet {
            setNeedsLayout()
        }
    }
    var ratingButton = [UIButton]()
    let spacing = 5
    let starCount = 5

    //MARK:Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        for _ in 0..<starCount {
            let button = UIButton()
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(filledStarImage, forState: [.Highlighted,.Selected])
            button.adjustsImageWhenHighlighted = false
            ratingButton += [button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        for (index,button) in ratingButton.enumerate() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
        updateButtonSelectionStates()
    }
    
    override func intrinsicContentSize() -> CGSize {
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        return CGSize(width: width, height: 44)
    }
    
    //MARK:Button Action
    func ratingButtonTapped(button:UIButton) {
        rating = ratingButton.indexOf(button)! + 1
        updateButtonSelectionStates()
    }
    
    func updateButtonSelectionStates() {
        for (index, button) in  ratingButton.enumerate() {
            button.selected = index < rating
        }
    }

}
